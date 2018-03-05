

# docker build --rm -t registry.cn-shanghai.aliyuncs.com/russellcloud/caffe:2-py2 -f Dockerfile-py2 .

cd ~ && python -c 'from caffe2.python import core' 2>/dev/null && echo "Success" || echo "Failure"



# GPU test
cd ~ && python caffe2/python/operator_test/relu_op_test.py
