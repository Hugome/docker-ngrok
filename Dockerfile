FROM golang:alpine
RUN apk add --no-cache git make
RUN git clone "https://github.com/inconshreveable/ngrok.git"
WORKDIR "/go/ngrok/"
RUN make release-server
RUN cp ./bin/ngrokd /bin/
WORKDIR "/go/"
RUN apk del --no-cache git make
RUN rm -Rf ngrok/

EXPOSE 80 443 4443
ENTRYPOINT "/bin/ngrokd"
