

# docker build --rm -t registry.cn-shanghai.aliyuncs.com/russellcloud/caffe:2.0-py2.7 -f Dockerfile-py2 .

cd ~ && python -c 'from caffe2.python import core' 2>/dev/null && echo "Success" || echo "Failure"



# GPU test
cd ~ && python caffe2/python/operator_test/relu_op_test.py

# ERROR LOGS
#1019/caffe2/caffe2/operators/conv_op_eigen.cc:24:2: error: #error "Caffe2 requires Eigen to be at least 3.3.0.";
#1020#error "Caffe2 requires Eigen to be at least 3.3.0.";
#1021 ^
#1022cc1plus: warning: unrecognized command line option ‘-Wno-invalid-partial-specialization’
#1023caffe2/CMakeFiles/caffe2.dir/build.make:4238: recipe for target 'caffe2/CMakeFiles/caffe2.dir/operators/conv_op_eigen.cc.o' failed
#1024make[2]: *** [caffe2/CMakeFiles/caffe2.dir/operators/conv_op_eigen.cc.o] Error 1
#1025make[1]: *** [caffe2/CMakeFiles/caffe2.dir/all] Error 2
#1026CMakeFiles/Makefile2:2341: recipe for target 'caffe2/CMakeFiles/caffe2.dir/all' failed
#1027Makefile:138: recipe for target 'all' failed
#1028make: *** [all] Error 2
#1029The command '/bin/sh -c git clone --recursive https://github.com/caffe2/caffe2.git && cd caffe2 && mkdir build && cd build && cmake .. && make install' returned a non-zero code: 2
#1030{"exitCode":8, "message":"docker build failed or timeout "}
