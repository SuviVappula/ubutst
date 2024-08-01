FROM ubuntu:24.04
RUN apt-get update -y 
RUN apt-get install -y dnsutils curl telnet traceroute postgresql-client mysql-client ssh nano vim stress lynx sysbench lftp
RUN apt-get -f -y install curl apt-transport-https lsb-release gnupg python3-pip && \
    curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.asc.gpg && \
    CLI_REPO=$(lsb_release -cs) && \
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ ${CLI_REPO} main" \
    > /etc/apt/sources.list.d/azure-cli.list && \
    apt-get update && \
    apt-get install -y azure-cli
RUN mkdir /.azure
RUN chmod 777 /.azure
    
USER 9001

# Run the container in the background
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
