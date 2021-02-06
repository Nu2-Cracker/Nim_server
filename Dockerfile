FROM archlinux

RUN mkdir /prj && mkdir -p /prj/nim_server

RUN pacman -Syy --noconfirm
RUN pacman -S which gcc nim nimble git pcre openssl\
  nodejs=14.15.4 npm --noconfirm

RUN nimble -y  install jester
WORKDIR /prj
RUN npm install -g -y vis-network
RUN npm install -g -y jquery
WORKDIR /prj/nim_server
