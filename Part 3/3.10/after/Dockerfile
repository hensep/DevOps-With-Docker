FROM golang:1.23-alpine AS build-stage

WORKDIR /usr/src/app

COPY . .

RUN go build -o hello-world


FROM scratch

COPY --from=build-stage /usr/src/app/hello-world ./

CMD ["./hello-world"]
