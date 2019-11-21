FROM ubuntu:bionic

COPY gnucash /app/gnucash

RUN apt-get update
RUN apt-get -y dist-upgrade
RUN apt-get -y install python3 python3-pip
RUN apt-get -y install cmake
RUN apt-get -y install pkg-config
RUN apt-get -y install libgtk-3-dev
RUN apt-get -y install guile-2.2-dev
RUN apt-get -y install libboost-all-dev
RUN apt-get -y install libwebkitgtk-dev
RUN apt-get -y install libgtest-dev
RUN apt-get -y install swig
RUN apt-get -y install libxslt-dev
RUN apt-get -y install libwebkit2gtk-4.0-37
RUN apt-get -y install libwebkit2gtk-4.0-dev
RUN apt-get -y install libaqbanking-dev
RUN apt-get -y install libgwenhywfar60-dev
RUN apt-get -y install libgwengui-gtk3-0
RUN apt-get -y install libofx-dev
RUN apt-get -y install xsltproc
RUN apt-get -y install google-mock
RUN apt-get -y install libdbi-dev
RUN apt-get -y install libdbi0-dev
RUN apt-get -y install libdbd-mysql
RUN apt-get -y install sed

# Compile GnuCash
RUN cd /app/gnucash && mkdir build && cd build && cmake -DWITH_PYTHON=ON .. && make && make install