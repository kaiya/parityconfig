FROM ubuntu:16.04
LABEL maintainer="Kaiya Xiong"
RUN mkdir /parity
WORKDIR /parity
RUN apt-get -qq update
RUN apt-get -qq install -y wget git
RUN wget http://d1h4xl4cr1h0mo.cloudfront.net/v1.8.11/x86_64-unknown-linux-gnu/parity_1.8.11_ubuntu_amd64.deb \
    && dpkg -i parity_1.8.11_ubuntu_amd64.deb \
RUN mkdir parityNode && rm parity_1.8.11_ubuntu_amd64.deb && git clone https://github.com/KYawn/parityconfig.git parityNode \
RUN cd parityNode && bash run.sh
RUN cd parityNode && parity --config node.toml

EXPOSE 30300 8545 8180 8450
