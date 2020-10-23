FROM amd64/ubuntu:trusty

RUN apt-get update\
    && apt-get install -y gcc-multilib g++-multilib libboost-all-dev

WORKDIR /source

ADD ${pwd}/source /source

RUN ./build.sh

EXPOSE 80

CMD ./server 0.0.0.0 80 .

