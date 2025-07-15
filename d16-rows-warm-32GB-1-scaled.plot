set terminal pdfcairo size 21,36 enhanced font 'Verdana,12'
set output 'd16-rows-warm-32GB-1-scaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 9,4 rowsfirst
set title 'timing (warm) / cyclic / eic=1' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0:3291.113]
set title 'cyclic / eic=1 / sync'

set ylabel 'timing (warm)'

plot "data/d16/cyclic/bitmapscan/1-sync-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/1-sync-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/1-sync-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/1-sync-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/1-sync-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/1-sync-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'cyclic / eic=1 / worker-3'

plot "data/d16/cyclic/bitmapscan/1-worker-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/1-worker-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/1-worker-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/1-worker-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/1-worker-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/1-worker-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic / eic=1 / worker-12'

plot "data/d16/cyclic/bitmapscan/1-worker-12-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/1-worker-12-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/1-worker-12-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/1-worker-12-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/1-worker-12-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/1-worker-12-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic / eic=1 / io\_uring'

plot "data/d16/cyclic/bitmapscan/1-io_uring-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/1-io_uring-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/1-io_uring-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/1-io_uring-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic/indexscan/1-io_uring-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/1-io_uring-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (warm) / cyclic\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.000829999336000531:100]
set yrange[0:5004.505]
set title 'cyclic\_1 / eic=1 / sync'

set ylabel 'timing (warm)'

plot "data/d16/cyclic_1/bitmapscan/1-sync-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_1/bitmapscan/1-sync-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_1/bitmapscan/1-sync-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_1/indexscan/1-sync-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_1/indexscan/1-sync-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_1/indexscan/1-sync-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'cyclic\_1 / eic=1 / worker-3'

plot "data/d16/cyclic_1/bitmapscan/1-worker-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_1/bitmapscan/1-worker-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_1/bitmapscan/1-worker-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_1/indexscan/1-worker-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_1/indexscan/1-worker-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_1/indexscan/1-worker-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic\_1 / eic=1 / worker-12'

plot "data/d16/cyclic_1/bitmapscan/1-worker-12-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_1/bitmapscan/1-worker-12-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_1/bitmapscan/1-worker-12-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_1/indexscan/1-worker-12-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_1/indexscan/1-worker-12-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_1/indexscan/1-worker-12-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'cyclic\_1 / eic=1 / io\_uring'

plot "data/d16/cyclic_1/bitmapscan/1-io_uring-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/cyclic_1/bitmapscan/1-io_uring-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/cyclic_1/bitmapscan/1-io_uring-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/cyclic_1/indexscan/1-io_uring-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/cyclic_1/indexscan/1-io_uring-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/cyclic_1/indexscan/1-io_uring-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (warm) / linear / eic=1' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set yrange[0:1428.418]
set title 'linear / eic=1 / sync'

set ylabel 'timing (warm)'

plot "data/d16/linear/bitmapscan/1-sync-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/1-sync-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/1-sync-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/1-sync-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/1-sync-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/1-sync-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'linear / eic=1 / worker-3'

plot "data/d16/linear/bitmapscan/1-worker-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/1-worker-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/1-worker-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/1-worker-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/1-worker-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/1-worker-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear / eic=1 / worker-12'

plot "data/d16/linear/bitmapscan/1-worker-12-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/1-worker-12-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/1-worker-12-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/1-worker-12-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/1-worker-12-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/1-worker-12-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear / eic=1 / io\_uring'

plot "data/d16/linear/bitmapscan/1-io_uring-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/1-io_uring-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/1-io_uring-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/1-io_uring-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear/indexscan/1-io_uring-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear/indexscan/1-io_uring-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (warm) / linear\\_1 / eic=1' font 'Verdana Bold,12'
set xrange[0.000430006020084281:100]
set yrange[0:4524.572]
set title 'linear\_1 / eic=1 / sync'

set ylabel 'timing (warm)'

plot "data/d16/linear_1/bitmapscan/1-sync-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/1-sync-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/1-sync-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/1-sync-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_1/indexscan/1-sync-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/1-sync-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

unset ylabel

set title 'linear\_1 / eic=1 / worker-3'

plot "data/d16/linear_1/bitmapscan/1-worker-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/1-worker-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/1-worker-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/1-worker-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_1/indexscan/1-worker-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/1-worker-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear\_1 / eic=1 / worker-12'

plot "data/d16/linear_1/bitmapscan/1-worker-12-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/1-worker-12-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/1-worker-12-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/1-worker-12-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_1/indexscan/1-worker-12-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/1-worker-12-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"

set title 'linear\_1 / eic=1 / io\_uring'

plot "data/d16/linear_1/bitmapscan/1-io_uring-3-32GB-master.data"            using 1:4 with points pt 6 ps 0.75 lc rgb "#cc0000" title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/1-io_uring-3-32GB-prefetch-simple.data"   using 1:4 with points pt 6 ps 0.75 lc rgb "#00dd00" title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/1-io_uring-3-32GB-prefetch-complex.data"  using 1:4 with points pt 6 ps 0.75 lc rgb "#0000cc" title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/1-io_uring-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 lc rgb "#dd0000" title "indexscan (master)", \
     "data/d16/linear_1/indexscan/1-io_uring-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#00cc00" title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/1-io_uring-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#0000dd" title "indexscan (complex)"
set title 'timing (warm) / uniform / eic=1' font 'Verdana Bold,12'
set xrange[0.000760010640148962:100]
set yrange[0:9112.036]
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
