set terminal pdfcairo size 21,36 enhanced font 'Verdana,12'
set output 'd16-rows-cold-32GB-1-scaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 9,4 rowsfirst
set title 'timing (cold) / cyclic / eic=1' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0:20060.079]
set title 'cyclic / eic=1 / sync'

set ylabel 'timing (cold)'

plot "data/d16/cyclic/bitmapscan/1-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/1-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/1-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/1-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/1-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/1-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'cyclic / eic=1 / worker-3'

plot "data/d16/cyclic/bitmapscan/1-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/1-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/1-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/1-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/1-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/1-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic / eic=1 / worker-12'

plot "data/d16/cyclic/bitmapscan/1-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/1-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/1-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/1-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/1-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/1-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic / eic=1 / io\_uring'

plot "data/d16/cyclic/bitmapscan/1-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/1-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/1-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/1-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/1-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/1-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / cyclic\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.000619999504000397:100]
set yrange[0:29071.992]
set title 'cyclic\_1 / eic=1 / sync'

set ylabel 'timing (cold)'

plot "data/d16/cyclic_1/bitmapscan/1-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_1/bitmapscan/1-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_1/bitmapscan/1-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_1/indexscan/1-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_1/indexscan/1-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_1/indexscan/1-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'cyclic\_1 / eic=1 / worker-3'

plot "data/d16/cyclic_1/bitmapscan/1-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_1/bitmapscan/1-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_1/bitmapscan/1-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_1/indexscan/1-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_1/indexscan/1-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_1/indexscan/1-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic\_1 / eic=1 / worker-12'

plot "data/d16/cyclic_1/bitmapscan/1-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_1/bitmapscan/1-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_1/bitmapscan/1-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_1/indexscan/1-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_1/indexscan/1-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_1/indexscan/1-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic\_1 / eic=1 / io\_uring'

plot "data/d16/cyclic_1/bitmapscan/1-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_1/bitmapscan/1-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_1/bitmapscan/1-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_1/indexscan/1-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_1/indexscan/1-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_1/indexscan/1-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / cyclic\\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.000439999648000282:100]
set yrange[0:55008.516]
set title 'cyclic\_10 / eic=1 / sync'

set ylabel 'timing (cold)'

plot "data/d16/cyclic_10/bitmapscan/1-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_10/bitmapscan/1-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_10/bitmapscan/1-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_10/indexscan/1-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_10/indexscan/1-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_10/indexscan/1-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'cyclic\_10 / eic=1 / worker-3'

plot "data/d16/cyclic_10/bitmapscan/1-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_10/bitmapscan/1-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_10/bitmapscan/1-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_10/indexscan/1-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_10/indexscan/1-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_10/indexscan/1-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic\_10 / eic=1 / worker-12'

plot "data/d16/cyclic_10/bitmapscan/1-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_10/bitmapscan/1-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_10/bitmapscan/1-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_10/indexscan/1-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_10/indexscan/1-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_10/indexscan/1-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic\_10 / eic=1 / io\_uring'

plot "data/d16/cyclic_10/bitmapscan/1-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_10/bitmapscan/1-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_10/bitmapscan/1-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_10/indexscan/1-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_10/indexscan/1-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_10/indexscan/1-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / cyclic\\_25 / eic=1' font 'Verdana Bold,12'
set xrange[0.00049999960000032:100]
set yrange[0:45054.516]
set title 'cyclic\_25 / eic=1 / sync'

set ylabel 'timing (cold)'

plot "data/d16/cyclic_25/bitmapscan/1-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_25/bitmapscan/1-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_25/bitmapscan/1-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_25/indexscan/1-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_25/indexscan/1-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_25/indexscan/1-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'cyclic\_25 / eic=1 / worker-3'

plot "data/d16/cyclic_25/bitmapscan/1-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_25/bitmapscan/1-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_25/bitmapscan/1-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_25/indexscan/1-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_25/indexscan/1-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_25/indexscan/1-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic\_25 / eic=1 / worker-12'

plot "data/d16/cyclic_25/bitmapscan/1-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_25/bitmapscan/1-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_25/bitmapscan/1-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_25/indexscan/1-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_25/indexscan/1-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_25/indexscan/1-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic\_25 / eic=1 / io\_uring'

plot "data/d16/cyclic_25/bitmapscan/1-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_25/bitmapscan/1-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_25/bitmapscan/1-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_25/indexscan/1-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_25/indexscan/1-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_25/indexscan/1-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / linear / eic=1' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0:19791.598]
set title 'linear / eic=1 / sync'

set ylabel 'timing (cold)'

plot "data/d16/linear/bitmapscan/1-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/1-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/1-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/1-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/1-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/1-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'linear / eic=1 / worker-3'

plot "data/d16/linear/bitmapscan/1-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/1-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/1-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/1-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/1-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/1-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear / eic=1 / worker-12'

plot "data/d16/linear/bitmapscan/1-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/1-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/1-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/1-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/1-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/1-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear / eic=1 / io\_uring'

plot "data/d16/linear/bitmapscan/1-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/1-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/1-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/1-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/1-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/1-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / linear\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.000430006020084281:100]
set yrange[0:70398.647]
set title 'linear\_1 / eic=1 / sync'

set ylabel 'timing (cold)'

plot "data/d16/linear_1/bitmapscan/1-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/1-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/1-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/1-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_1/indexscan/1-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/1-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'linear\_1 / eic=1 / worker-3'

plot "data/d16/linear_1/bitmapscan/1-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/1-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/1-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/1-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_1/indexscan/1-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/1-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear\_1 / eic=1 / worker-12'

plot "data/d16/linear_1/bitmapscan/1-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/1-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/1-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/1-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_1/indexscan/1-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/1-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear\_1 / eic=1 / io\_uring'

plot "data/d16/linear_1/bitmapscan/1-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/1-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/1-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/1-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_1/indexscan/1-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/1-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / linear\\_10 / eic=1' font 'Verdana Bold,12'
set xrange[0.000409999672000262:100]
set yrange[0:48951.972]
set title 'linear\_10 / eic=1 / sync'

set ylabel 'timing (cold)'

plot "data/d16/linear_10/bitmapscan/1-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_10/bitmapscan/1-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_10/bitmapscan/1-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_10/indexscan/1-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_10/indexscan/1-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_10/indexscan/1-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'linear\_10 / eic=1 / worker-3'

plot "data/d16/linear_10/bitmapscan/1-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_10/bitmapscan/1-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_10/bitmapscan/1-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_10/indexscan/1-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_10/indexscan/1-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_10/indexscan/1-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear\_10 / eic=1 / worker-12'

plot "data/d16/linear_10/bitmapscan/1-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_10/bitmapscan/1-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_10/bitmapscan/1-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_10/indexscan/1-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_10/indexscan/1-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_10/indexscan/1-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear\_10 / eic=1 / io\_uring'

plot "data/d16/linear_10/bitmapscan/1-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_10/bitmapscan/1-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_10/bitmapscan/1-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_10/indexscan/1-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_10/indexscan/1-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_10/indexscan/1-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / linear\\_25 / eic=1' font 'Verdana Bold,12'
set xrange[0.000349999720000224:100]
set yrange[0:67751.173]
set title 'linear\_25 / eic=1 / sync'

set ylabel 'timing (cold)'

plot "data/d16/linear_25/bitmapscan/1-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_25/bitmapscan/1-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_25/bitmapscan/1-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_25/indexscan/1-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_25/indexscan/1-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_25/indexscan/1-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'linear\_25 / eic=1 / worker-3'

plot "data/d16/linear_25/bitmapscan/1-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_25/bitmapscan/1-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_25/bitmapscan/1-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_25/indexscan/1-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_25/indexscan/1-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_25/indexscan/1-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear\_25 / eic=1 / worker-12'

plot "data/d16/linear_25/bitmapscan/1-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_25/bitmapscan/1-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_25/bitmapscan/1-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_25/indexscan/1-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_25/indexscan/1-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_25/indexscan/1-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear\_25 / eic=1 / io\_uring'

plot "data/d16/linear_25/bitmapscan/1-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_25/bitmapscan/1-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_25/bitmapscan/1-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_25/indexscan/1-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_25/indexscan/1-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_25/indexscan/1-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / uniform / eic=1' font 'Verdana Bold,12'
set xrange[0.000760010640148962:100]
set yrange[0:55220.803]
set title 'uniform / eic=1 / sync'

set ylabel 'timing (cold)'

plot "data/d16/uniform/bitmapscan/1-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/1-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/1-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/1-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/1-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/1-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'uniform / eic=1 / worker-3'

plot "data/d16/uniform/bitmapscan/1-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/1-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/1-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/1-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/1-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/1-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'uniform / eic=1 / worker-12'

plot "data/d16/uniform/bitmapscan/1-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/1-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/1-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/1-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/1-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/1-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'uniform / eic=1 / io\_uring'

plot "data/d16/uniform/bitmapscan/1-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/1-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/1-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/1-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/1-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/1-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
