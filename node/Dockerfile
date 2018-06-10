FROM centos:7.5.1804
WORKDIR /workspace
COPY blockchain-explorer /workspace/blockchain-explorer
RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | bash - && \
    yum install -y nodejs
