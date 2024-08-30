FROM node:22-alpine3.19 AS build
COPY . .
RUN npm install
EXPOSE 3000
CMD [ "npm","run","start" ]
