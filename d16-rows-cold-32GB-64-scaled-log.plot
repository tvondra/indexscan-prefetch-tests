set terminal pdfcairo size 21,36 enhanced font 'Verdana,12'
set output 'd16-rows-cold-32GB-64-scaled-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,4 rowsfirst
set title 'timing (cold) / cyclic / eic=64' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0.01:20129.872]
set title 'cyclic / eic=64 / sync'

set ylabel 'timing (cold)'

plot "data/d16/cyclic/bitmapscan/64-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/64-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/64-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/64-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/64-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/64-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'cyclic / eic=64 / worker-3'

plot "data/d16/cyclic/bitmapscan/64-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/64-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/64-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/64-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/64-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/64-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic / eic=64 / worker-12'

plot "data/d16/cyclic/bitmapscan/64-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/64-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/64-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/64-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/64-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/64-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic / eic=64 / io\_uring'

plot "data/d16/cyclic/bitmapscan/64-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/64-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/64-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/64-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/64-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/64-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / cyclic\\_1 / eic=64' font 'Verdana Bold,12'
set xrange[0.000619999504000397:100]
set yrange[0.01:29071.992]
set title 'cyclic\_1 / eic=64 / sync'

set ylabel 'timing (cold)'

plot "data/d16/cyclic_1/bitmapscan/64-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_1/bitmapscan/64-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_1/bitmapscan/64-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_1/indexscan/64-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_1/indexscan/64-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_1/indexscan/64-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'cyclic\_1 / eic=64 / worker-3'

plot "data/d16/cyclic_1/bitmapscan/64-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_1/bitmapscan/64-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_1/bitmapscan/64-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_1/indexscan/64-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_1/indexscan/64-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_1/indexscan/64-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic\_1 / eic=64 / worker-12'

plot "data/d16/cyclic_1/bitmapscan/64-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_1/bitmapscan/64-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_1/bitmapscan/64-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_1/indexscan/64-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_1/indexscan/64-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_1/indexscan/64-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic\_1 / eic=64 / io\_uring'

plot "data/d16/cyclic_1/bitmapscan/64-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_1/bitmapscan/64-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_1/bitmapscan/64-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_1/indexscan/64-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_1/indexscan/64-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_1/indexscan/64-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / cyclic\\_10 / eic=64' font 'Verdana Bold,12'
set xrange[0.000439999648000282:100]
set yrange[0.01:55008.516]
set title 'cyclic\_10 / eic=64 / sync'

set ylabel 'timing (cold)'

plot "data/d16/cyclic_10/bitmapscan/64-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_10/bitmapscan/64-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_10/bitmapscan/64-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_10/indexscan/64-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_10/indexscan/64-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_10/indexscan/64-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'cyclic\_10 / eic=64 / worker-3'

plot "data/d16/cyclic_10/bitmapscan/64-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_10/bitmapscan/64-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_10/bitmapscan/64-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_10/indexscan/64-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_10/indexscan/64-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_10/indexscan/64-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic\_10 / eic=64 / worker-12'

plot "data/d16/cyclic_10/bitmapscan/64-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_10/bitmapscan/64-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_10/bitmapscan/64-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_10/indexscan/64-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_10/indexscan/64-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_10/indexscan/64-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic\_10 / eic=64 / io\_uring'

plot "data/d16/cyclic_10/bitmapscan/64-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_10/bitmapscan/64-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_10/bitmapscan/64-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_10/indexscan/64-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_10/indexscan/64-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_10/indexscan/64-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / cyclic\\_25 / eic=64' font 'Verdana Bold,12'
set xrange[0.000369999704000237:100]
set yrange[0.01:52539.886]
set title 'cyclic\_25 / eic=64 / sync'

set ylabel 'timing (cold)'

plot "data/d16/cyclic_25/bitmapscan/64-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_25/bitmapscan/64-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_25/bitmapscan/64-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_25/indexscan/64-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_25/indexscan/64-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_25/indexscan/64-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'cyclic\_25 / eic=64 / worker-3'

plot "data/d16/cyclic_25/bitmapscan/64-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_25/bitmapscan/64-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_25/bitmapscan/64-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_25/indexscan/64-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_25/indexscan/64-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_25/indexscan/64-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic\_25 / eic=64 / worker-12'

plot "data/d16/cyclic_25/bitmapscan/64-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_25/bitmapscan/64-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_25/bitmapscan/64-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_25/indexscan/64-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_25/indexscan/64-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_25/indexscan/64-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic\_25 / eic=64 / io\_uring'

plot "data/d16/cyclic_25/bitmapscan/64-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_25/bitmapscan/64-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_25/bitmapscan/64-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_25/indexscan/64-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_25/indexscan/64-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_25/indexscan/64-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / linear / eic=64' font 'Verdana Bold,12'
set xrange[0.000989999208000634:100]
set yrange[0.01:19791.598]
set title 'linear / eic=64 / sync'

set ylabel 'timing (cold)'

plot "data/d16/linear/bitmapscan/64-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/64-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/64-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/64-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/64-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/64-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'linear / eic=64 / worker-3'

plot "data/d16/linear/bitmapscan/64-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/64-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/64-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/64-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/64-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/64-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear / eic=64 / worker-12'

plot "data/d16/linear/bitmapscan/64-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/64-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/64-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/64-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/64-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/64-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear / eic=64 / io\_uring'

plot "data/d16/linear/bitmapscan/64-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/64-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/64-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/64-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/64-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/64-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / linear\\_1 / eic=64' font 'Verdana Bold,12'
set xrange[0.000430006020084281:100]
set yrange[0.01:70398.647]
set title 'linear\_1 / eic=64 / sync'

set ylabel 'timing (cold)'

plot "data/d16/linear_1/bitmapscan/64-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/64-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/64-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/64-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_1/indexscan/64-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/64-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'linear\_1 / eic=64 / worker-3'

plot "data/d16/linear_1/bitmapscan/64-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/64-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/64-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/64-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_1/indexscan/64-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/64-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear\_1 / eic=64 / worker-12'

plot "data/d16/linear_1/bitmapscan/64-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/64-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/64-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/64-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_1/indexscan/64-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/64-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear\_1 / eic=64 / io\_uring'

plot "data/d16/linear_1/bitmapscan/64-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/64-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/64-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/64-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_1/indexscan/64-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/64-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / linear\\_10 / eic=64' font 'Verdana Bold,12'
set xrange[0.000409999672000262:100]
set yrange[0.01:48951.972]
set title 'linear\_10 / eic=64 / sync'

set ylabel 'timing (cold)'

plot "data/d16/linear_10/bitmapscan/64-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_10/bitmapscan/64-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_10/bitmapscan/64-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_10/indexscan/64-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_10/indexscan/64-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_10/indexscan/64-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'linear\_10 / eic=64 / worker-3'

plot "data/d16/linear_10/bitmapscan/64-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_10/bitmapscan/64-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_10/bitmapscan/64-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_10/indexscan/64-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_10/indexscan/64-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_10/indexscan/64-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear\_10 / eic=64 / worker-12'

plot "data/d16/linear_10/bitmapscan/64-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_10/bitmapscan/64-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_10/bitmapscan/64-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_10/indexscan/64-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_10/indexscan/64-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_10/indexscan/64-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear\_10 / eic=64 / io\_uring'

plot "data/d16/linear_10/bitmapscan/64-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_10/bitmapscan/64-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_10/bitmapscan/64-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_10/indexscan/64-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_10/indexscan/64-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_10/indexscan/64-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / linear\\_25 / eic=64' font 'Verdana Bold,12'
set xrange[0.000349999720000224:100]
set yrange[0.01:67751.173]
set title 'linear\_25 / eic=64 / sync'

set ylabel 'timing (cold)'

plot "data/d16/linear_25/bitmapscan/64-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_25/bitmapscan/64-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_25/bitmapscan/64-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_25/indexscan/64-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_25/indexscan/64-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_25/indexscan/64-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'linear\_25 / eic=64 / worker-3'

plot "data/d16/linear_25/bitmapscan/64-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_25/bitmapscan/64-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_25/bitmapscan/64-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_25/indexscan/64-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_25/indexscan/64-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_25/indexscan/64-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear\_25 / eic=64 / worker-12'

plot "data/d16/linear_25/bitmapscan/64-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_25/bitmapscan/64-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_25/bitmapscan/64-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_25/indexscan/64-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_25/indexscan/64-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_25/indexscan/64-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear\_25 / eic=64 / io\_uring'

plot "data/d16/linear_25/bitmapscan/64-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_25/bitmapscan/64-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_25/bitmapscan/64-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_25/indexscan/64-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_25/indexscan/64-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_25/indexscan/64-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (cold) / uniform / eic=64' font 'Verdana Bold,12'
set xrange[0.000700009800137202:100]
set yrange[0.01:62603.024]
set title 'uniform / eic=64 / sync'

set ylabel 'timing (cold)'

plot "data/d16/uniform/bitmapscan/64-sync-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/64-sync-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/64-sync-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/64-sync-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/64-sync-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/64-sync-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'uniform / eic=64 / worker-3'

plot "data/d16/uniform/bitmapscan/64-worker-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/64-worker-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/64-worker-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/64-worker-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/64-worker-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/64-worker-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'uniform / eic=64 / worker-12'

plot "data/d16/uniform/bitmapscan/64-worker-12-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/64-worker-12-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/64-worker-12-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/64-worker-12-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/64-worker-12-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/64-worker-12-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'uniform / eic=64 / io\_uring'

plot "data/d16/uniform/bitmapscan/64-io_uring-3-32GB-master.data"            using 1:3 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/64-io_uring-3-32GB-prefetch-simple.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/64-io_uring-3-32GB-prefetch-complex.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/64-io_uring-3-32GB-master.data"             using 1:3 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/uniform/indexscan/64-io_uring-3-32GB-prefetch-simple.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/uniform/indexscan/64-io_uring-3-32GB-prefetch-complex.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
