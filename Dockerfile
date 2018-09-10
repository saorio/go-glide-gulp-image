FROM golang:1.11

RUN curl https://glide.sh/get | sh
RUN apt-get update
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN npm rebuild node-sass --force
RUN npm install -g gulp
RUN npm install --save-dev gulp
RUN go get -u github.com/golang/dep/cmd/dep
RUN go get -u github.com/alecthomas/gometalinter
RUN gometalinter --install
