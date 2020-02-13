FROM node:6.11.5
MAINTAINER "Armando Hernandez Marin" <armando.hernandez@infotec.mx>
WORKDIR /usr/src/app
COPY . .
RUN npm install
CMD ["npm", "start"]
EXPOSE 8080
