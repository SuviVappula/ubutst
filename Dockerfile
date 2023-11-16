FROM ubuntu:20.04
RUN apt-get update -y 
RUN apt-get install -y netcat
RUN apt-get install -y dnsutils
RUN apt-get install -y curl
RUN apt-get install -y telnet
RUN apt-get install -y traceroute
RUN apt-get install -y postgresql-client
RUN apt-get install -y mysql-client 
RUN apt-get install -y ssh
RUN apt-get install -y nano vim
RUN apt-get install -y stress
RUN apt-get install -y lynx
RUN apt-get install -y sysbench
RUN apt-get install lftp
 
USER 9001

# Run the container in the background
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
