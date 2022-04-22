FROM cdyue/linux-base:0.0.1
RUN yum -y install wget tar gzip && yum -y install gcc && wget https://golang.org/dl/go1.18.linux-amd64.tar.gz && tar -xzf go1.18.linux-amd64.tar.gz && mv go /usr/local && rm -rf /var/cache/yum
ENV GOROOT=/usr/local/go
ENV PATH=$GOROOT/bin:$PATH

