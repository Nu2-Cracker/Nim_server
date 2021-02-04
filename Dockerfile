FROM archlinux

RUN mkdir /prj && mkdir -p /prj/nim_server

RUN pacman -Syy --noconfirm
RUN pacman -S which gcc nim nimble git pcre openssl --noconfirm
RUN nimble -y  install jester
WORKDIR /prj/nim_server
