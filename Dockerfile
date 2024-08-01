FROM ubuntu:24.04
RUN apt-get update -y 
RUN apt-get install -y dnsutils curl telnet traceroute postgresql-client mysql-client ssh nano vim stress lynx sysbench lftp pip
RUN pip install azure-cli -U 
RUN az extension add --name azure-devops
    
USER 9001

# Run the container in the background
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
