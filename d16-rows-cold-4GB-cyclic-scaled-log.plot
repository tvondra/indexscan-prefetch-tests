set terminal pdfcairo size 21,16 enhanced font 'Verdana,12'
set output 'd16-rows-cold-4GB-cyclic-scaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 4,4 rowsfirst
set title 'timing (cold) / cyclic / eic=0' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0.01:20129.872]
set title 'cyclic / eic=0 / sync'

set ylabel 'timing (cold)'

plot "data/d16/cyclic/bitmapscan/0-sync-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/0-sync-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/0-sync-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/0-sync-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/0-sync-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/0-sync-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'cyclic / eic=0 / worker-3'

plot "data/d16/cyclic/bitmapscan/0-worker-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/0-worker-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/0-worker-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/0-worker-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/0-worker-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/0-worker-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic / eic=0 / worker-12'

plot "data/d16/cyclic/bitmapscan/0-worker-12-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/0-worker-12-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/0-worker-12-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/0-worker-12-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/0-worker-12-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/0-worker-12-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic / eic=0 / io\_uring'

plot "data/d16/cyclic/bitmapscan/0-io_uring-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/0-io_uring-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/0-io_uring-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/0-io_uring-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/0-io_uring-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/0-io_uring-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / cyclic / eic=1' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0.01:20129.872]
set title 'cyclic / eic=1 / sync'

set ylabel 'timing (cold)'

plot "data/d16/cyclic/bitmapscan/1-sync-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/1-sync-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/1-sync-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/1-sync-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/1-sync-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/1-sync-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'cyclic / eic=1 / worker-3'

plot "data/d16/cyclic/bitmapscan/1-worker-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/1-worker-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/1-worker-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/1-worker-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/1-worker-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/1-worker-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic / eic=1 / worker-12'

plot "data/d16/cyclic/bitmapscan/1-worker-12-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/1-worker-12-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/1-worker-12-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/1-worker-12-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/1-worker-12-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/1-worker-12-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic / eic=1 / io\_uring'

plot "data/d16/cyclic/bitmapscan/1-io_uring-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/1-io_uring-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/1-io_uring-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/1-io_uring-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/1-io_uring-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/1-io_uring-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / cyclic / eic=16' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0.01:20129.872]
set title 'cyclic / eic=16 / sync'

set ylabel 'timing (cold)'

plot "data/d16/cyclic/bitmapscan/16-sync-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/16-sync-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/16-sync-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/16-sync-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/16-sync-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/16-sync-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'cyclic / eic=16 / worker-3'

plot "data/d16/cyclic/bitmapscan/16-worker-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/16-worker-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/16-worker-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/16-worker-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/16-worker-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/16-worker-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic / eic=16 / worker-12'

plot "data/d16/cyclic/bitmapscan/16-worker-12-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/16-worker-12-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/16-worker-12-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/16-worker-12-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/16-worker-12-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/16-worker-12-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic / eic=16 / io\_uring'

plot "data/d16/cyclic/bitmapscan/16-io_uring-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/16-io_uring-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/16-io_uring-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/16-io_uring-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/16-io_uring-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/16-io_uring-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / cyclic / eic=64' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0.01:20129.872]
set title 'cyclic / eic=64 / sync'

set ylabel 'timing (cold)'

plot "data/d16/cyclic/bitmapscan/64-sync-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/64-sync-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/64-sync-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/64-sync-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/64-sync-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/64-sync-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'cyclic / eic=64 / worker-3'

plot "data/d16/cyclic/bitmapscan/64-worker-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/64-worker-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/64-worker-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/64-worker-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/64-worker-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/64-worker-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic / eic=64 / worker-12'

plot "data/d16/cyclic/bitmapscan/64-worker-12-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/64-worker-12-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/64-worker-12-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/64-worker-12-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/64-worker-12-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/64-worker-12-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic / eic=64 / io\_uring'

plot "data/d16/cyclic/bitmapscan/64-io_uring-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/64-io_uring-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/64-io_uring-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/64-io_uring-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/64-io_uring-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/64-io_uring-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
