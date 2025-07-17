set terminal pdfcairo size 21,16 enhanced font 'Verdana,12'
set output 'd16-rows-cold-4GB-linear-scaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 4,4 rowsfirst
set title 'timing (cold) / linear / eic=0' font 'Verdana Bold,12'
set xrange[0.000989999208000634:100]
set yrange[0:19791.598]
set title 'linear / eic=0 / sync'

set ylabel 'timing (cold)'

plot "data/d16/linear/bitmapscan/0-sync-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/0-sync-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/0-sync-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/0-sync-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/0-sync-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/0-sync-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'linear / eic=0 / worker-3'

plot "data/d16/linear/bitmapscan/0-worker-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/0-worker-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/0-worker-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/0-worker-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/0-worker-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/0-worker-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear / eic=0 / worker-12'

plot "data/d16/linear/bitmapscan/0-worker-12-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/0-worker-12-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/0-worker-12-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/0-worker-12-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/0-worker-12-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/0-worker-12-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear / eic=0 / io\_uring'

plot "data/d16/linear/bitmapscan/0-io_uring-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/0-io_uring-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/0-io_uring-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/0-io_uring-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/0-io_uring-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/0-io_uring-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / linear / eic=1' font 'Verdana Bold,12'
set xrange[0.000989999208000634:100]
set yrange[0:19791.598]
set title 'linear / eic=1 / sync'

set ylabel 'timing (cold)'

plot "data/d16/linear/bitmapscan/1-sync-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/1-sync-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/1-sync-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/1-sync-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/1-sync-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/1-sync-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'linear / eic=1 / worker-3'

plot "data/d16/linear/bitmapscan/1-worker-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/1-worker-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/1-worker-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/1-worker-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/1-worker-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/1-worker-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear / eic=1 / worker-12'

plot "data/d16/linear/bitmapscan/1-worker-12-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/1-worker-12-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/1-worker-12-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/1-worker-12-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/1-worker-12-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/1-worker-12-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear / eic=1 / io\_uring'

plot "data/d16/linear/bitmapscan/1-io_uring-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/1-io_uring-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/1-io_uring-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/1-io_uring-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/1-io_uring-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/1-io_uring-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / linear / eic=16' font 'Verdana Bold,12'
set xrange[0.000989999208000634:100]
set yrange[0:19791.598]
set title 'linear / eic=16 / sync'

set ylabel 'timing (cold)'

plot "data/d16/linear/bitmapscan/16-sync-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/16-sync-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/16-sync-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/16-sync-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/16-sync-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/16-sync-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'linear / eic=16 / worker-3'

plot "data/d16/linear/bitmapscan/16-worker-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/16-worker-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/16-worker-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/16-worker-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/16-worker-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/16-worker-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear / eic=16 / worker-12'

plot "data/d16/linear/bitmapscan/16-worker-12-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/16-worker-12-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/16-worker-12-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/16-worker-12-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/16-worker-12-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/16-worker-12-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear / eic=16 / io\_uring'

plot "data/d16/linear/bitmapscan/16-io_uring-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/16-io_uring-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/16-io_uring-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/16-io_uring-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/16-io_uring-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/16-io_uring-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / linear / eic=64' font 'Verdana Bold,12'
set xrange[0.000989999208000634:100]
set yrange[0:19791.598]
set title 'linear / eic=64 / sync'

set ylabel 'timing (cold)'

plot "data/d16/linear/bitmapscan/64-sync-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/64-sync-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/64-sync-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/64-sync-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/64-sync-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/64-sync-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'linear / eic=64 / worker-3'

plot "data/d16/linear/bitmapscan/64-worker-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/64-worker-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/64-worker-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/64-worker-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/64-worker-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/64-worker-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear / eic=64 / worker-12'

plot "data/d16/linear/bitmapscan/64-worker-12-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/64-worker-12-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/64-worker-12-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/64-worker-12-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/64-worker-12-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/64-worker-12-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear / eic=64 / io\_uring'

plot "data/d16/linear/bitmapscan/64-io_uring-3-4GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/64-io_uring-3-4GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/64-io_uring-3-4GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/64-io_uring-3-4GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/64-io_uring-3-4GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/64-io_uring-3-4GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
