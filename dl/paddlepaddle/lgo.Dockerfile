FROM floydhub/dl-base:3.0.0-gpu-py2.18
MAINTAINER Russell labs "contact@russellcloud.cn"
# paddle:v2-gpu-py2.75
# RUN pip install paddlepaddle-gpu

RUN pip install --upgrade pip && pip install -U jupyter jupyterlab && jupyter serverextension enable --py jupyterlab --sys-prefix

ENV LGOPATH /lgo
RUN mkdir -p $LGOPATH

# Fetch lgo repository
RUN go get github.com/yunabe/lgo/cmd/lgo && go get -d github.com/yunabe/lgo/cmd/lgo-internal

# Install packages used from example notebooks.
RUN go get -u github.com/nfnt/resize gonum.org/v1/gonum/... gonum.org/v1/plot/... github.com/wcharczuk/go-chart

# Install lgo
RUN lgo install && lgo installpkg github.com/nfnt/resize gonum.org/v1/gonum/... gonum.org/v1/plot/... github.com/wcharczuk/go-chart
RUN $GOPATH/src/github.com/yunabe/lgo/bin/install_kernel


select * from docker_container_mem where aliyun_project_id='630b5b64b2074cff925eaa23105e3c47-1524013480000'