FROM node:16 AS prod

COPY . ./app

RUN npm --prefix=./app run build

WORKDIR /app/build

COPY .env .

RUN npm i --only=production

ENTRYPOINT npm run start

EXPOSE 3333
