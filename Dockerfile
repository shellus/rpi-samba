FROM ubuntu:18.04
MAINTAINER shellus <shellus@endaosi.com>

RUN apt-get update && apt-get install -y samba && apt-get clean

COPY init /init
RUN chmod u+x /init

EXPOSE 445 137 138 139

ENTRYPOINT ["/init"]
CMD ["-h"]
