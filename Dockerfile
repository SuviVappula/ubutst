FROM ubuntu:22.04
RUN apt-get update -y 
RUN apt-get install -y netcat dnsutils curl telnet traceroute postgresql-client mysql-client ssh nano vim stress lynx sysbench lftp
RUN apt-get update && apt-get -y upgrade && \
    apt-get -f -y install curl apt-transport-https lsb-release gnupg python3-pip ca-certificates && \
    curl -LsS https://aka.ms/InstallAzureCLIDeb | bash && rm -rf /var/lib/apt/lists/* && \
    apt-get update
    
USER 9001

# Run the container in the background
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
