FROM golang:1.16-alpine

WORKDIR /usr/src/app

COPY . .

ENV PORT=8080

EXPOSE $PORT

ENV REQUEST_ORIGIN=http://localhost:5000

RUN <<EOF
go build 
addgroup -S appgroup
adduser -S appuser -G appgroup 
rm -rf /var/lib/apt/lists/*
EOF

USER appuser

CMD ["./server"]
