FROM node:16-alpine AS build-stage

EXPOSE 5000

WORKDIR /usr/src/app

COPY . .

RUN <<EOF
npm install
npm run build
rm -rf /var/lib/apt/lists/*
EOF


FROM node:16-alpine

RUN npm install -g serve

COPY --from=build-stage /usr/src/app/build/  /usr/src/app/

ENV REACT_APP_BACKEND_URL=http://localhost:8080

CMD ["serve", "-s", "-l", "5000", "build"]
