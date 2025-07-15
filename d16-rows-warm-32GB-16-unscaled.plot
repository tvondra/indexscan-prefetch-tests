set terminal pdfcairo size 21,36 enhanced font 'Verdana,12'
set output 'd16-rows-warm-32GB-16-unscaled.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 9,4 rowsfirst
set title 'timing (warm) / cyclic / eic=16' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set title 'cyclic / eic=16 / sync'

set ylabel 'timing (warm)'

plot "data/d16/cyclic/bitmapscan/16-sync-3-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/16-sync-3-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/16-sync-3-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/16-sync-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/cyclic/indexscan/16-sync-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/16-sync-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"

unset ylabel

set title 'cyclic / eic=16 / worker-3'

plot "data/d16/cyclic/bitmapscan/16-worker-3-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/16-worker-3-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/16-worker-3-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/16-worker-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/cyclic/indexscan/16-worker-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/16-worker-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'cyclic / eic=16 / worker-12'

plot "data/d16/cyclic/bitmapscan/16-worker-12-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/16-worker-12-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/16-worker-12-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/16-worker-12-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/cyclic/indexscan/16-worker-12-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/16-worker-12-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'cyclic / eic=16 / io\_uring'

plot "data/d16/cyclic/bitmapscan/16-io_uring-3-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/cyclic/bitmapscan/16-io_uring-3-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/cyclic/bitmapscan/16-io_uring-3-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/cyclic/indexscan/16-io_uring-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/cyclic/indexscan/16-io_uring-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/cyclic/indexscan/16-io_uring-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"
set title 'timing (warm) / cyclic\\_1 / eic=16' font 'Verdana Bold,12'
set xrange[0.000869999304000557:100]
set title 'cyclic\_1 / eic=16 / sync'

set ylabel 'timing (warm)'

plot "data/d16/cyclic_1/bitmapscan/16-sync-3-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/cyclic_1/bitmapscan/16-sync-3-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/cyclic_1/bitmapscan/16-sync-3-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/cyclic_1/indexscan/16-sync-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/cyclic_1/indexscan/16-sync-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/cyclic_1/indexscan/16-sync-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"

unset ylabel

set title 'cyclic\_1 / eic=16 / worker-3'

plot "data/d16/cyclic_1/bitmapscan/16-worker-3-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/cyclic_1/bitmapscan/16-worker-3-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/cyclic_1/bitmapscan/16-worker-3-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/cyclic_1/indexscan/16-worker-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/cyclic_1/indexscan/16-worker-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/cyclic_1/indexscan/16-worker-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'cyclic\_1 / eic=16 / worker-12'

plot "data/d16/cyclic_1/bitmapscan/16-worker-12-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/cyclic_1/bitmapscan/16-worker-12-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/cyclic_1/bitmapscan/16-worker-12-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/cyclic_1/indexscan/16-worker-12-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/cyclic_1/indexscan/16-worker-12-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/cyclic_1/indexscan/16-worker-12-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'cyclic\_1 / eic=16 / io\_uring'

plot "data/d16/cyclic_1/bitmapscan/16-io_uring-3-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/cyclic_1/bitmapscan/16-io_uring-3-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/cyclic_1/bitmapscan/16-io_uring-3-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/cyclic_1/indexscan/16-io_uring-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/cyclic_1/indexscan/16-io_uring-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/cyclic_1/indexscan/16-io_uring-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"
set title 'timing (warm) / linear / eic=16' font 'Verdana Bold,12'
set xrange[0.00099999920000064:100]
set title 'linear / eic=16 / sync'

set ylabel 'timing (warm)'

plot "data/d16/linear/bitmapscan/16-sync-3-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/16-sync-3-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/16-sync-3-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/16-sync-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear/indexscan/16-sync-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear/indexscan/16-sync-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"

unset ylabel

set title 'linear / eic=16 / worker-3'

plot "data/d16/linear/bitmapscan/16-worker-3-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/16-worker-3-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/16-worker-3-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/16-worker-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear/indexscan/16-worker-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear/indexscan/16-worker-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'linear / eic=16 / worker-12'

plot "data/d16/linear/bitmapscan/16-worker-12-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/16-worker-12-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/16-worker-12-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/16-worker-12-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear/indexscan/16-worker-12-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear/indexscan/16-worker-12-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'linear / eic=16 / io\_uring'

plot "data/d16/linear/bitmapscan/16-io_uring-3-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear/bitmapscan/16-io_uring-3-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear/bitmapscan/16-io_uring-3-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear/indexscan/16-io_uring-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear/indexscan/16-io_uring-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear/indexscan/16-io_uring-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"
set title 'timing (warm) / linear\\_1 / eic=16' font 'Verdana Bold,12'
set xrange[0.000430006020084281:100]
set title 'linear\_1 / eic=16 / sync'

set ylabel 'timing (warm)'

plot "data/d16/linear_1/bitmapscan/16-sync-3-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/16-sync-3-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/16-sync-3-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/16-sync-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/16-sync-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/16-sync-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"

unset ylabel

set title 'linear\_1 / eic=16 / worker-3'

plot "data/d16/linear_1/bitmapscan/16-worker-3-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/16-worker-3-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/16-worker-3-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/16-worker-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/16-worker-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/16-worker-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'linear\_1 / eic=16 / worker-12'

plot "data/d16/linear_1/bitmapscan/16-worker-12-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/16-worker-12-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/16-worker-12-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/16-worker-12-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/16-worker-12-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/16-worker-12-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'linear\_1 / eic=16 / io\_uring'

plot "data/d16/linear_1/bitmapscan/16-io_uring-3-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/linear_1/bitmapscan/16-io_uring-3-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/linear_1/bitmapscan/16-io_uring-3-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/linear_1/indexscan/16-io_uring-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/linear_1/indexscan/16-io_uring-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/linear_1/indexscan/16-io_uring-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"
set title 'timing (warm) / uniform / eic=16' font 'Verdana Bold,12'
set xrange[0.000760010640148962:100]
set title 'uniform / eic=16 / sync'

set ylabel 'timing (warm)'

plot "data/d16/uniform/bitmapscan/16-sync-3-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/16-sync-3-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/16-sync-3-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/16-sync-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/uniform/indexscan/16-sync-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/uniform/indexscan/16-sync-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"

unset ylabel

set title 'uniform / eic=16 / worker-3'

plot "data/d16/uniform/bitmapscan/16-worker-3-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/16-worker-3-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/16-worker-3-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/16-worker-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/uniform/indexscan/16-worker-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/uniform/indexscan/16-worker-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'uniform / eic=16 / worker-12'

plot "data/d16/uniform/bitmapscan/16-worker-12-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/16-worker-12-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/16-worker-12-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/16-worker-12-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/uniform/indexscan/16-worker-12-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/uniform/indexscan/16-worker-12-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"

set title 'uniform / eic=16 / io\_uring'

plot "data/d16/uniform/bitmapscan/16-io_uring-3-32GB-master.data"            using 1:4 with points pt 7 ps 0.75 title "bitmapscan (master)", \
     "data/d16/uniform/bitmapscan/16-io_uring-3-32GB-prefetch-simple.data"   using 1:4 with points pt 7 ps 0.75 title "bitmapscan (simple)", \
     "data/d16/uniform/bitmapscan/16-io_uring-3-32GB-prefetch-complex.data"  using 1:4 with points pt 7 ps 0.75 title "bitmapscan (complex)", \
     "data/d16/uniform/indexscan/16-io_uring-3-32GB-master.data"             using 1:4 with points pt 7 ps 0.75 title "indexscan (master)", \
     "data/d16/uniform/indexscan/16-io_uring-3-32GB-prefetch-simple.data"    using 1:4 with points pt 7 ps 0.75 title "indexscan (simple)", \
     "data/d16/uniform/indexscan/16-io_uring-3-32GB-prefetch-complex.data"   using 1:4 with points pt 7 ps 0.75 title "indexscan (complex)"
