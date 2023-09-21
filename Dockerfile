FROM ubuntu:22.04


RUN apt-get update && apt-get install samba -y

RUN useradd usr1
RUN useradd usr2
RUN useradd admin

RUN smbpasswd -a usr1
RUN smbpasswd -a usr2
RUN smbpasswd -a admin

