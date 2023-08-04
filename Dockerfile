# Pull the minimal Ubuntu image
FROM ubuntu:latest

#File maintainer
MAINTAINER "prachisonsare57536@gmail.com"

# update lib
RUN apt-get update && apt-get install -y sudo


#user creation
RUN useradd -ms /bin/bash Nature2
RUN echo 'Nature1:password' | chpasswd

RUN adduser Nature2 sudo
USER Nature2
WORKDIR  /home/Nature2

RUN mkdir my-directory

ADD target/Nature2.war  /home/Nature2/my-directory


CMD ["/bin/bash"]

