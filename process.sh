#!/usr/bin/env bash

MACHINES="d16"

rm -Rf data
mkdir data

rm -f scans.db
rm -f *.pdf *.plot

sqlite3 scans.db <<EOF
create table results_d16 (seq int, cnt int, dataset text, scan text, eic int, version int, io_method text, io_workers int, shared_buffers text, start_val int, end_val int, optimal text, total_rows int, rows int, total_pages int, pages int, cost numeric, timing_cold numeric, timing_warm numeric);
EOF

#1 97310 uniform bitmapscan 64 prefetch-complex io_uring 3 32GB 2005 99315 no 9999860 9730507 555556 555556 911620.81 3449.961 1415.536

sqlite3 scans.db <<EOF
.mode csv
.separator ' '
.import results.csv results_d16
EOF

sqlite3 scans.db <<EOF
.headers on
.mode csv
.output export.csv
SELECT
    seq,
    dataset,
    scan,
    eic,
    version,
    io_method,
    io_workers,
    shared_buffers,
    round(rows * 100.0 / total_rows,3) AS selectivity_rows,
    round(pages * 100.0 / total_pages,3) AS selectivity_pages,
    timing_cold,
    timing_warm numeric
FROM results_d16
EOF

sqlite3 scans.db <<EOF
create index idx1 on results_d16 (dataset,scan,eic,io_method,io_workers,shared_buffers);
analyze;
EOF

for m in $MACHINES; do

	rm -f tmp.data

	mkdir data/$m

	for sb in 4GB 32GB; do

		sqlite3 scans.db > tmp.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT dataset, scan, eic, io_method, io_workers, version FROM results_${m}
EOF

		while IFS= read -r line; do

			IFS=' ' read -r -a strarray <<< "$line"

			dataset="${strarray[0]}"
			scan="${strarray[1]}"
			eic="${strarray[2]}"
			iomethod="${strarray[3]}"
			ioworkers="${strarray[4]}"
			version="${strarray[5]}"

			mkdir -p data/$m/$dataset/$scan/

			sqlite3 scans.db > data/$m/$dataset/$scan/$eic-$iomethod-$ioworkers-$sb-$version.data <<EOF
.mode tab
SELECT (rows * 100.0 / total_rows), (pages * 100.0 / total_pages), timing_cold, timing_warm, cost FROM results_${m} WHERE dataset = '$dataset' AND scan = '$scan' AND eic = $eic AND io_method = '$iomethod' AND io_workers = $ioworkers AND shared_buffers = '$sb' AND version = '$version' ORDER BY (rows * 100.0 / total_rows), (pages * 100.0 / total_pages)
EOF

		done < tmp.data

	done

done

for sb in 4GB 32GB; do

	for m in $MACHINES; do

		sqlite3 scans.db > dataset.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT dataset FROM results_${m} WHERE shared_buffers = '$sb' ORDER BY dataset
EOF

		sqlite3 scans.db > prefetch.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT eic FROM results_${m} WHERE shared_buffers = '$sb' ORDER BY eic
EOF

		#for sel in rows pages; do
		for sel in rows; do

			if [ "$sel" == "rows" ]; then
				D="100.0 * rows / total_rows"
				X="1"
			else
				X="2"
				D="100.0 * pages / total_pages"
			fi

			#for cache in cold warm cost; do
			for cache in cold warm; do

				if [ "$cache" == "cold" ]; then
					LABEL="timing (cold)"
					LABEL_Y="duration [ms]"
					C="timing_cold"
					Y="3"
				elif [ "$cache" == "warm" ]; then
					LABEL="timing (warm)"
					LABEL_Y="duration [ms]"
					C="timing_warm"
					Y="4"
				else
					# force cost
					LABEL="cost estimate"
					LABEL_X="cost"
					C="cost"
					Y="5"
				fi

				# scale all charts to same range?
				for scale in scaled unscaled; do

					while IFS= read -r dataset; do

						ds=$(echo $dataset | sed 's/_/\\\\_/')

						sed "s/MACHINE/$m/" plot.template | sed "s/DS/$ds/" | sed "s/DATASET/$dataset/" | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/$scale/" | sed "s/EIC/$eic/" | sed "s/BUFFERS/$sb/" | sed "s/SCALE/$scale/" > $m-$sel-$cache-$sb-$dataset-$scale.plot
						sed "s/MACHINE/$m/" plot-log.template | sed "s/DS/$ds/" | sed "s/DATASET/$dataset/" | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/$scale/" | sed "s/EIC/$eic/" | sed "s/BUFFERS/$sb/" | sed "s/SCALE/$scale/" > $m-$sel-$cache-$sb-$dataset-$scale-log.plot

						while IFS= read -r eic; do

							min=$(sqlite3 scans.db "SELECT MIN($D) FROM results_${m} WHERE dataset = '$dataset' AND pages > 0")
							max=$(sqlite3 scans.db "SELECT MAX($C) FROM results_${m} WHERE dataset = '$dataset'")

							echo "set title '$LABEL / $ds / eic=$eic' font 'Verdana Bold,12'" >> $m-$sel-$cache-$sb-$dataset-$scale.plot
							echo "set title '$LABEL / $ds / eic=$eic' font 'Verdana Bold,12'" >> $m-$sel-$cache-$sb-$dataset-$scale-log.plot

							echo "set xrange[$min:100]" >> $m-$sel-$cache-$sb-$dataset-$scale.plot
							echo "set xrange[$min:100]" >> $m-$sel-$cache-$sb-$dataset-$scale-log.plot

							if [ "$scale" == "scaled" ]; then
								echo "set yrange[0:$max]" >> $m-$sel-$cache-$sb-$dataset-$scale.plot
								echo "set yrange[0.01:$max]" >> $m-$sel-$cache-$sb-$dataset-$scale-log.plot
							fi

							sed "s/MACHINE/$m/" row.template | sed "s/LABEL/$LABEL/" | sed "s/DS/$ds/" | sed "s/DATASET/$dataset/" | sed "s/EIC/$eic/" | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/RPC/$rpc/" | sed "s/BUFFERS/$sb/" >> $m-$sel-$cache-$sb-$dataset-$scale.plot
							sed "s/MACHINE/$m/" row.template | sed "s/LABEL/$LABEL/" | sed "s/DS/$ds/" | sed "s/DATASET/$dataset/" | sed "s/EIC/$eic/" | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/RPC/$rpc/" | sed "s/BUFFERS/$sb/" >> $m-$sel-$cache-$sb-$dataset-$scale-log.plot

						done < prefetch.data

						gnuplot $m-$sel-$cache-$sb-$dataset-$scale.plot
						gnuplot $m-$sel-$cache-$sb-$dataset-$scale-log.plot

					done < dataset.data

				done

			done

		done

	done

done

for sb in 4GB 32GB; do

	for m in $MACHINES; do

		sqlite3 scans.db > dataset.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT dataset FROM results_${m} WHERE shared_buffers = '$sb' ORDER BY dataset
EOF

		sqlite3 scans.db > prefetch.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT eic FROM results_${m} WHERE shared_buffers = '$sb' ORDER BY eic
EOF

		#for sel in rows pages; do
		for sel in rows; do

			if [ "$sel" == "rows" ]; then
				D="100.0 * rows / total_rows"
				X="1"
			else
				X="2"
				D="100.0 * pages / total_pages"
			fi

			#for cache in cold warm cost; do
			for cache in cold warm; do

				if [ "$cache" == "cold" ]; then
					LABEL="timing (cold)"
					LABEL_Y="duration [ms]"
					C="timing_cold"
					Y="3"
				elif [ "$cache" == "warm" ]; then
					LABEL="timing (warm)"
					LABEL_Y="duration [ms]"
					C="timing_warm"
					Y="4"
				else
					# force cost
					LABEL="cost estimate"
					LABEL_X="cost"
					C="cost"
					Y="5"
				fi

				# scale all charts to same range?
				for scale in scaled unscaled; do

					while IFS= read -r eic; do

						sed "s/MACHINE/$m/" plot-eic.template | sed "s/DATASET/$dataset/" | sed "s/DS/$ds/" | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/$scale/" | sed "s/EIC/$eic/" | sed "s/BUFFERS/$sb/" | sed "s/SCALE/$scale/" | sed "s/EIC/$eic/" > $m-$sel-$cache-$sb-$eic-$scale.plot
						sed "s/MACHINE/$m/" plot-eic-log.template | sed "s/DATASET/$dataset/" | sed "s/DS/$ds/" | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/$scale/" | sed "s/EIC/$eic/" | sed "s/BUFFERS/$sb/" | sed "s/SCALE/$scale/" | sed "s/EIC/$eic/" > $m-$sel-$cache-$sb-$eic-$scale-log.plot

						while IFS= read -r dataset; do

							ds=$(echo $dataset | sed 's/_/\\\\_/')

							min=$(sqlite3 scans.db "SELECT MIN($D) FROM results_${m} WHERE dataset = '$dataset' AND pages > 0")
							max=$(sqlite3 scans.db "SELECT MAX($C) FROM results_${m} WHERE dataset = '$dataset'")

							echo "set title '$LABEL / $ds / eic=$eic' font 'Verdana Bold,12'" >> $m-$sel-$cache-$sb-$eic-$scale.plot
							echo "set title '$LABEL / $ds / eic=$eic' font 'Verdana Bold,12'" >> $m-$sel-$cache-$sb-$eic-$scale-log.plot

							echo "set xrange[$min:100]" >> $m-$sel-$cache-$sb-$eic-$scale.plot
							echo "set xrange[$min:100]" >> $m-$sel-$cache-$sb-$eic-$scale-log.plot

							if [ "$scale" == "scaled" ]; then
								echo "set yrange[0:$max]" >> $m-$sel-$cache-$sb-$eic-$scale.plot
								echo "set yrange[0.01:$max]" >> $m-$sel-$cache-$sb-$eic-$scale-log.plot
							fi

							sed "s/MACHINE/$m/" row.template | sed "s/LABEL/$LABEL/" | sed "s/DATASET/$dataset/" | sed "s/DS/$ds/" | sed "s/EIC/$eic/" | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/RPC/$rpc/" | sed "s/BUFFERS/$sb/" >> $m-$sel-$cache-$sb-$eic-$scale.plot
							sed "s/MACHINE/$m/" row.template | sed "s/LABEL/$LABEL/" | sed "s/DATASET/$dataset/" | sed "s/DS/$ds/"  | sed "s/EIC/$eic/" | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/RPC/$rpc/" | sed "s/BUFFERS/$sb/" >> $m-$sel-$cache-$sb-$eic-$scale-log.plot

						done < dataset.data

						gnuplot $m-$sel-$cache-$sb-$eic-$scale.plot
						gnuplot $m-$sel-$cache-$sb-$eic-$scale-log.plot

					done < prefetch.data

				done

			done

		done

	done

done
