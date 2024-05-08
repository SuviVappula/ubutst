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
RUN apt-get install lftp -y
RUN apt-get update && apt-get -y upgrade && \
    apt-get -f -y install curl apt-transport-https lsb-release gnupg python3-pip python-pip && \
    curl -sL https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/microsoft.asc.gpg && \
    CLI_REPO=$(lsb_release -cs) && \
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ ${CLI_REPO} main" \
    > /etc/apt/sources.list.d/azure-cli.list && \
    apt-get update && \
    apt-get install -y azure-cli && \
    rm -rf /var/lib/apt/lists/*

USER 9001

# Run the container in the background
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
