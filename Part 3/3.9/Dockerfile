FROM golang:1.16-alpine AS build-stage

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN CGO_ENABLED=0  go build


FROM scratch

COPY --from=build-stage /usr/src/app/server .

ENV REQUEST_ORIGIN=http://localhost:5000

CMD ["./server"]
