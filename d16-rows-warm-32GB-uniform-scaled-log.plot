set terminal pdfcairo size 21,16 enhanced font 'Verdana,12'
set output 'd16-rows-warm-32GB-uniform-scaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 4,4 rowsfirst
set title 'timing (warm) / uniform / eic=0' font 'Verdana Bold,12'
set xrange[0.000760010640148962:100]
set yrange[0.01:9112.036]
set title 'uniform / eic=0 / sync'

set ylabel 'timing (warm)'

plot "data/d16/uniform/bitmapscan/0-sync-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/0-sync-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/0-sync-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/0-sync-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/0-sync-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/0-sync-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'uniform / eic=0 / worker-3'

plot "data/d16/uniform/bitmapscan/0-worker-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/0-worker-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/0-worker-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/0-worker-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/0-worker-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/0-worker-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'uniform / eic=0 / worker-12'

plot "data/d16/uniform/bitmapscan/0-worker-12-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/0-worker-12-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/0-worker-12-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/0-worker-12-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/0-worker-12-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/0-worker-12-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'uniform / eic=0 / io\_uring'

plot "data/d16/uniform/bitmapscan/0-io_uring-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/0-io_uring-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/0-io_uring-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/0-io_uring-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/0-io_uring-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/0-io_uring-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (warm) / uniform / eic=1' font 'Verdana Bold,12'
set xrange[0.000760010640148962:100]
set yrange[0.01:9112.036]
set title 'uniform / eic=1 / sync'

set ylabel 'timing (warm)'

plot "data/d16/uniform/bitmapscan/1-sync-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/1-sync-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/1-sync-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/1-sync-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/1-sync-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/1-sync-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'uniform / eic=1 / worker-3'

plot "data/d16/uniform/bitmapscan/1-worker-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/1-worker-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/1-worker-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/1-worker-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/1-worker-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/1-worker-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'uniform / eic=1 / worker-12'

plot "data/d16/uniform/bitmapscan/1-worker-12-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/1-worker-12-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/1-worker-12-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/1-worker-12-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/1-worker-12-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/1-worker-12-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'uniform / eic=1 / io\_uring'

plot "data/d16/uniform/bitmapscan/1-io_uring-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/1-io_uring-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/1-io_uring-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/1-io_uring-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/1-io_uring-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/1-io_uring-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (warm) / uniform / eic=16' font 'Verdana Bold,12'
set xrange[0.000760010640148962:100]
set yrange[0.01:9112.036]
set title 'uniform / eic=16 / sync'

set ylabel 'timing (warm)'

plot "data/d16/uniform/bitmapscan/16-sync-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/16-sync-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/16-sync-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/16-sync-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/16-sync-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/16-sync-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'uniform / eic=16 / worker-3'

plot "data/d16/uniform/bitmapscan/16-worker-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/16-worker-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/16-worker-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/16-worker-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/16-worker-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/16-worker-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'uniform / eic=16 / worker-12'

plot "data/d16/uniform/bitmapscan/16-worker-12-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/16-worker-12-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/16-worker-12-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/16-worker-12-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/16-worker-12-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/16-worker-12-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'uniform / eic=16 / io\_uring'

plot "data/d16/uniform/bitmapscan/16-io_uring-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/16-io_uring-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/16-io_uring-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/16-io_uring-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/16-io_uring-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/16-io_uring-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (warm) / uniform / eic=64' font 'Verdana Bold,12'
set xrange[0.000760010640148962:100]
set yrange[0.01:9112.036]
set title 'uniform / eic=64 / sync'

set ylabel 'timing (warm)'

plot "data/d16/uniform/bitmapscan/64-sync-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/64-sync-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/64-sync-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/64-sync-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/64-sync-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/64-sync-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'uniform / eic=64 / worker-3'

plot "data/d16/uniform/bitmapscan/64-worker-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/64-worker-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/64-worker-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/64-worker-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/64-worker-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/64-worker-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'uniform / eic=64 / worker-12'

plot "data/d16/uniform/bitmapscan/64-worker-12-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/64-worker-12-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/64-worker-12-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/64-worker-12-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/64-worker-12-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/64-worker-12-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'uniform / eic=64 / io\_uring'

plot "data/d16/uniform/bitmapscan/64-io_uring-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/64-io_uring-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/64-io_uring-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/64-io_uring-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/64-io_uring-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/64-io_uring-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
