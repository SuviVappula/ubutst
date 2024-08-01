FROM ubuntu:22.04
RUN apt-get update -y 
RUN apt-get install -y netcat dnsutils curl telnet traceroute postgresql-client mysql-client ssh nano vim stress lynx sysbench lftp pip3
RUN pip3 install azure-cli
RUN az extension add --name azure-devops
    
USER 9001

# Run the container in the background
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
