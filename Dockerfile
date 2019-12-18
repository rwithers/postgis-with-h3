FROM mdillon/postgis:11

EXPOSE 5433:5432

RUN apt-get update

RUN apt-get -y install git 

RUN apt-get -y install ca-certificates

RUN git clone https://github.com/uber/h3.git

WORKDIR /h3

RUN apt-get -y install cmake 

RUN cmake -DCMAKE_C_FLAGS=-fPIC .

RUN make install 

WORKDIR /

RUN git clone https://github.com/dlr-eoc/pgh3.git

RUN apt-get -y install postgresql-server-dev-11

WORKDIR /pgh3

RUN make install 

