# syntax=docker/dockerfile:1

FROM node:20
WORKDIR /app
COPY package*.json ./
RUN sudo npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]