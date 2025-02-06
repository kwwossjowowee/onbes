FROM ubuntu:latest 
WORKDIR /work
COPY . /work
RUN apt update -y
RUN apt upgrade -y
RUN apt install curl -y
RUN curl -fsSL https://code-server.dev/install.sh | sh
CMD code-server --auth none --bind-addr localhost:3000
