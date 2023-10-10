FROM golang:latest AS build-stage

WORKDIR /go_project

COPY app_resources ./

EXPOSE 8080

RUN apt-get -y update
RUN apt-get install -y software-properties-common
RUN add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
RUN apt-get -y update
RUN apt-get install -y python3-pip
RUN apt install -y python3-venv
RUN python3 -m venv .python-venv
RUN source .python-venv/bin/activate
RUN pip3 install pre-commit
RUN git init
RUN pre-commit install

CMD ["tail", "-f", "/dev/null"]