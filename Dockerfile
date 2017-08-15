FROM mhart/alpine-node

# main dir
WORKDIR /src

RUN apk add --update curl && \
    curl -O https://github.com/tsenart/vegeta/releases/download/v6.3.0/vegeta-v6.3.0-linux-amd64.tar.gz

CMD ["tar -xvf vegeta-v6.3.0-linux-amd64.tar.gz"]
ENTRYPOINT ["/usr/bin/curl", "tar"]

# project dependencies
COPY package.json /src/api/package.json
