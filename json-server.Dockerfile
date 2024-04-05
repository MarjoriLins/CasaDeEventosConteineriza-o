FROM node:20-alpine

WORKDIR /app

RUN npm install -g json-server

COPY ./eventos.json .

EXPOSE 3000

CMD ["json-server", "--port" , "3000" , "--watch" , "eventos.json"]