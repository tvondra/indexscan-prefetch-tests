set terminal pdfcairo size 21,36 enhanced font 'Verdana,12'
set output 'd16-rows-warm-4GB-0-unscaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,4 rowsfirst
set title 'timing (warm) / cyclic / eic=0' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set title 'cyclic / eic=0 / sync'

set ylabel 'timing (warm)'

plot "data/d16/cyclic/bitmapscan/0-sync-3-4GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/0-sync-3-4GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/0-sync-3-4GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/0-sync-3-4GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/0-sync-3-4GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/0-sync-3-4GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'cyclic / eic=0 / worker-3'

plot "data/d16/cyclic/bitmapscan/0-worker-3-4GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/0-worker-3-4GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/0-worker-3-4GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/0-worker-3-4GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/0-worker-3-4GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/0-worker-3-4GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic / eic=0 / worker-12'

plot "data/d16/cyclic/bitmapscan/0-worker-12-4GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/0-worker-12-4GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/0-worker-12-4GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/0-worker-12-4GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/0-worker-12-4GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/0-worker-12-4GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic / eic=0 / io\_uring'

plot "data/d16/cyclic/bitmapscan/0-io_uring-3-4GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/0-io_uring-3-4GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/0-io_uring-3-4GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/0-io_uring-3-4GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/0-io_uring-3-4GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/0-io_uring-3-4GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (warm) / linear / eic=0' font 'Verdana Bold,12'
set xrange[0.000989999208000634:100]
set title 'linear / eic=0 / sync'

set ylabel 'timing (warm)'

plot "data/d16/linear/bitmapscan/0-sync-3-4GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/0-sync-3-4GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/0-sync-3-4GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/0-sync-3-4GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/0-sync-3-4GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/0-sync-3-4GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'linear / eic=0 / worker-3'

plot "data/d16/linear/bitmapscan/0-worker-3-4GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/0-worker-3-4GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/0-worker-3-4GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/0-worker-3-4GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/0-worker-3-4GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/0-worker-3-4GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear / eic=0 / worker-12'

plot "data/d16/linear/bitmapscan/0-worker-12-4GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/0-worker-12-4GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/0-worker-12-4GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/0-worker-12-4GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/0-worker-12-4GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/0-worker-12-4GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear / eic=0 / io\_uring'

plot "data/d16/linear/bitmapscan/0-io_uring-3-4GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/0-io_uring-3-4GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/0-io_uring-3-4GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/0-io_uring-3-4GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/0-io_uring-3-4GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/0-io_uring-3-4GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (warm) / linear\\_1 / eic=0' font 'Verdana Bold,12'
set xrange[0.000430006020084281:100]
set title 'linear\_1 / eic=0 / sync'

set ylabel 'timing (warm)'

plot "data/d16/linear_1/bitmapscan/0-sync-3-4GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/0-sync-3-4GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/0-sync-3-4GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/0-sync-3-4GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_1/indexscan/0-sync-3-4GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/0-sync-3-4GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'linear\_1 / eic=0 / worker-3'

plot "data/d16/linear_1/bitmapscan/0-worker-3-4GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/0-worker-3-4GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/0-worker-3-4GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/0-worker-3-4GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_1/indexscan/0-worker-3-4GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/0-worker-3-4GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear\_1 / eic=0 / worker-12'

plot "data/d16/linear_1/bitmapscan/0-worker-12-4GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/0-worker-12-4GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/0-worker-12-4GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/0-worker-12-4GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_1/indexscan/0-worker-12-4GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/0-worker-12-4GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear\_1 / eic=0 / io\_uring'

plot "data/d16/linear_1/bitmapscan/0-io_uring-3-4GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/0-io_uring-3-4GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/0-io_uring-3-4GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/0-io_uring-3-4GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_1/indexscan/0-io_uring-3-4GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/0-io_uring-3-4GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (warm) / uniform / eic=0' font 'Verdana Bold,12'
set xrange[0.000700009800137202:100]
set title 'uniform / eic=0 / sync'

set ylabel 'timing (warm)'

plot "data/d16/uniform/bitmapscan/0-sync-3-4GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/0-sync-3-4GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/0-sync-3-4GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/0-sync-3-4GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/0-sync-3-4GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/0-sync-3-4GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'uniform / eic=0 / worker-3'

plot "data/d16/uniform/bitmapscan/0-worker-3-4GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/0-worker-3-4GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/0-worker-3-4GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/0-worker-3-4GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/0-worker-3-4GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/0-worker-3-4GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'uniform / eic=0 / worker-12'

plot "data/d16/uniform/bitmapscan/0-worker-12-4GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/0-worker-12-4GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/0-worker-12-4GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/0-worker-12-4GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/0-worker-12-4GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/0-worker-12-4GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'uniform / eic=0 / io\_uring'

plot "data/d16/uniform/bitmapscan/0-io_uring-3-4GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/0-io_uring-3-4GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/0-io_uring-3-4GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/0-io_uring-3-4GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/0-io_uring-3-4GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/0-io_uring-3-4GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
