FROM debian:latest 
WORKDIR /work
COPY . /work
RUN apt update -y
RUN apt upgrade -y
RUN apt install python3-pip -y
RUN pip install notebook --break-system-packages
ENTRYPOINT ["bash", "run.sh"]
