FROM node:8-alpine

RUN mkdir -p /app
COPY . /app
WORKDIR /app

RUN npm install
RUN npm run test

EXPOSE 4443:4443

CMD ["npm", "start"]