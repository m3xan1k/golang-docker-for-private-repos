FROM golang:1.22

WORKDIR /code

RUN echo "[url \"git@github.com:\"]\n\tinsteadOf = https://github.com/" >> /root/.gitconfig
RUN echo "[safe]\n\tdirectory = /code" >> /root/.gitconfig
RUN mkdir /root/.ssh && echo "StrictHostKeyChecking no " > /root/.ssh/config

ENV PATH="${PATH}:/usr/local/go/bin"

COPY . .
