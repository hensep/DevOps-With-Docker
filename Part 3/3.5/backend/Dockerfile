FROM golang:1.16

WORKDIR /usr/src/app

COPY . .

RUN go build

ENV PORT=8080

EXPOSE $PORT

ENV REQUEST_ORIGIN=http://localhost:5000

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

USER appuser

CMD ["./server"]
