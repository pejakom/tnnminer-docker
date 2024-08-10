FROM ubuntu:20.04

RUN /bin/sh -c \
    apt-get update && \
    apt-get install -y wget && \
    apt-get install libicu-dev -y && \
    rm -rf /var/lib/apt/lists/* # buildkit

RUN mkdir /projekhaha
WORKDIR /projekhaha

COPY ./test1 .
RUN chmod +x ./test1

ENTRYPOINT ["./test1"]
CMD ["--spectre", "--wallet", "spectre:qp7vye8pcmmdtjuqhmjmk0wxmam20wywhs474fnrykfmshpmzd3wkg7dp78zd", "--daemon-address", "spr.tw-pool.com", "--port", "14001", "--worker-name", "sage", "--threads", "8"]
