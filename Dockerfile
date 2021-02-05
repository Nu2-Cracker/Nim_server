FROM archlinux

RUN mkdir /prj && mkdir -p /prj/nim_server

RUN pacman -Syy --noconfirm
RUN pacman -S which gcc nim nimble git pcre openssl\
  nodejs=14.15.4 npm --noconfirm

RUN nimble -y  install jester
RUN npm install -y vis-network
WORKDIR /prj/nim_server
