FROM /*an image*/
USER root
RUN apk add stress-ng
RUN apk add iproute2
RUN apk add iperf3
RUN apk add --no-cache iputils
RUN chmod u+s /bin/ping
RUN apk add libcap
RUN setcap cap_net_raw+p /bin/ping
RUN mkdir -p /app/tmp
RUN chmod -R 777 /app
