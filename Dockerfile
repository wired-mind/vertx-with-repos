FROM dockerfile/java:oracle-java7

MAINTAINER Chuck Swanberg <cswanberg@mad-swan.com>

RUN wget -O /usr/share/ep https://github.com/kreuzwerker/envplate/releases/download/v0.0.5/ep-linux && \
    chmod +x /usr/share/ep && \
    ln -s /usr/share/ep /usr/bin/ep

RUN wget http://dl.bintray.com/vertx/downloads/vert.x-2.1.5.tar.gz && \
    tar zxf vert.x-2.1.5.tar.gz -C /usr/share && \
    rm vert.x-2.1.5.tar.gz && \
    ln -s /usr/share/vert.x-2.1.5/bin/vertx /usr/bin/vertx

ADD repos.txt /usr/share/vert.x-2.1.5/conf/repos.txt

ENTRYPOINT ["ep", "/usr/share/vert.x-2.1.5/conf/repos.txt", "--", "/usr/bin/vertx"] 
CMD ["version"]