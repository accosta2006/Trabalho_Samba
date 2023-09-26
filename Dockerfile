FROM ubuntu:22.04


RUN apt-get update && apt-get install samba -y
RUN service smbd start

RUN echo "usr1" | smbpasswd -aw usr1
RUN echo "usr2" | smbpasswd -aw usr2
RUN echo "admin" | smbpasswd -aw admin

RUN mkdir -p /home/sharing/
