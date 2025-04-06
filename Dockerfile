FROM node:20

WORKDIR /app

COPY ./package*.json ./

RUN npm ci --verbose

RUN npm install

COPY ./ .

EXPOSE 8080

CMD ["npm", "run", "start"]