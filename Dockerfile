FROM node:10@sha256:59531d2835edd5161c8f9512f9e095b1836f7a1fcb0ab73e005ec46047384911
WORKDIR /build
COPY ./package.json .
RUN npm install
COPY . .
ENTRYPOINT npm run prod-pack
