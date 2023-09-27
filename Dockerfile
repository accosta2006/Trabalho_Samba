FROM ubuntu:22.04


RUN apt-get update && apt-get install samba -y

RUN useradd usr1 -p usr1
RUN useradd usr2 -p usr2
RUN useradd admin -p admin

COPY ./configure_samba.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/configure_samba.sh

ENTRYPOINT [ "/usr/local/bin/configure_samba.sh" ]
