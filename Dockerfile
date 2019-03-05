FROM ubuntu
MAINTAINER shellus

RUN apt-get update && apt-get install -y samba && apt-get clean

COPY run.sh /run.sh
RUN chmod u+x /run.sh

EXPOSE 445 137 138 139

ENTRYPOINT ["/run.sh"]
CMD ["-h"]
