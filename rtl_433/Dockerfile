ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache --virtual build-deps build-base libusb-dev librtlsdr-dev cmake git && \
    mkdir /tmp/src && \
    cd /tmp/src && \
    git clone https://github.com/merbanan/rtl_433 && \
    cd rtl_433/ && \
    mkdir build && \
    cd build && \
    cmake -DCMAKE_BUILD_TYPE=Release ../ && \
    make && \
    strip src/rtl_433 && \
    cp src/rtl_433 / && \
    touch /rtl_433.conf && \
    apk del build-deps && \
    rm -r /tmp/src && \
    apk add --no-cache libusb librtlsdr

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
