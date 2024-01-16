FROM /*an image*/
USER root
RUN apt-get update && apt-get install -y \
    stress-ng \
    iproute2 \
    iperf3 \
    iputils-ping \
    libcap2-bin
RUN setcap cap_net_raw+p /bin/ping
RUN mkdir -p /app/tmp && chmod -R 777 /app
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
