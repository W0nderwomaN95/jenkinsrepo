FROM golang

ADD hellojenkins.go /

RUN go build -o /hellojenkins /hellojenkins.go

CMD ["/hellojenkins"]