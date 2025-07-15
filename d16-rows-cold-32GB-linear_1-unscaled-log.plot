set terminal pdfcairo size 21,16 enhanced font 'Verdana,12'
set output 'd16-rows-cold-32GB-linear_1-unscaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 4,4 rowsfirst
set title 'timing (cold) / linear\\_1 / eic=0' font 'Verdana Bold,12'
set xrange[0.000430006020084281:100]
set title 'linear\_1 / eic=0 / sync'

set ylabel 'timing (cold)'

plot "data/d16/linear_1/bitmapscan/0-sync-3-32GB-master.data"            using 1:3 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/0-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/0-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/0-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/0-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/0-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 title "indexscan (complex)"

unset ylabel

set title 'linear\_1 / eic=0 / worker-3'

plot "data/d16/linear_1/bitmapscan/0-worker-3-32GB-master.data"            using 1:3 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/0-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/0-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/0-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/0-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/0-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'linear\_1 / eic=0 / worker-12'

plot "data/d16/linear_1/bitmapscan/0-worker-12-32GB-master.data"            using 1:3 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/0-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/0-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/0-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/0-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/0-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'linear\_1 / eic=0 / io\_uring'

plot "data/d16/linear_1/bitmapscan/0-io_uring-3-32GB-master.data"            using 1:3 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/0-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/0-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/0-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/0-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/0-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 title "indexscan (complex)"
set title 'timing (cold) / linear\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.000430006020084281:100]
set title 'linear\_1 / eic=1 / sync'

set ylabel 'timing (cold)'

plot "data/d16/linear_1/bitmapscan/1-sync-3-32GB-master.data"            using 1:3 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/1-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/1-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/1-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/1-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/1-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 title "indexscan (complex)"

unset ylabel

set title 'linear\_1 / eic=1 / worker-3'

plot "data/d16/linear_1/bitmapscan/1-worker-3-32GB-master.data"            using 1:3 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/1-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/1-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/1-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/1-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/1-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'linear\_1 / eic=1 / worker-12'

plot "data/d16/linear_1/bitmapscan/1-worker-12-32GB-master.data"            using 1:3 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/1-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/1-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/1-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/1-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/1-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'linear\_1 / eic=1 / io\_uring'

plot "data/d16/linear_1/bitmapscan/1-io_uring-3-32GB-master.data"            using 1:3 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/1-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/1-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/1-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/1-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/1-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 title "indexscan (complex)"
set title 'timing (cold) / linear\\_1 / eic=16' font 'Verdana Bold,12'
set xrange[0.000430006020084281:100]
set title 'linear\_1 / eic=16 / sync'

set ylabel 'timing (cold)'

plot "data/d16/linear_1/bitmapscan/16-sync-3-32GB-master.data"            using 1:3 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/16-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/16-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/16-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/16-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/16-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 title "indexscan (complex)"

unset ylabel

set title 'linear\_1 / eic=16 / worker-3'

plot "data/d16/linear_1/bitmapscan/16-worker-3-32GB-master.data"            using 1:3 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/16-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/16-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/16-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/16-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/16-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'linear\_1 / eic=16 / worker-12'

plot "data/d16/linear_1/bitmapscan/16-worker-12-32GB-master.data"            using 1:3 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/16-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/16-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/16-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/16-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/16-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'linear\_1 / eic=16 / io\_uring'

plot "data/d16/linear_1/bitmapscan/16-io_uring-3-32GB-master.data"            using 1:3 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/16-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/16-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/16-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/16-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/16-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 title "indexscan (complex)"
set title 'timing (cold) / linear\\_1 / eic=64' font 'Verdana Bold,12'
set xrange[0.000430006020084281:100]
set title 'linear\_1 / eic=64 / sync'

set ylabel 'timing (cold)'

plot "data/d16/linear_1/bitmapscan/64-sync-3-32GB-master.data"            using 1:3 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/64-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/64-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/64-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/64-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/64-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 title "indexscan (complex)"

unset ylabel

set title 'linear\_1 / eic=64 / worker-3'

plot "data/d16/linear_1/bitmapscan/64-worker-3-32GB-master.data"            using 1:3 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/64-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/64-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/64-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/64-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/64-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'linear\_1 / eic=64 / worker-12'

plot "data/d16/linear_1/bitmapscan/64-worker-12-32GB-master.data"            using 1:3 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/64-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/64-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/64-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/64-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/64-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'linear\_1 / eic=64 / io\_uring'

plot "data/d16/linear_1/bitmapscan/64-io_uring-3-32GB-master.data"            using 1:3 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/64-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/64-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/64-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/64-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/64-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 title "indexscan (complex)"
