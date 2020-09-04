FROM node

LABEL maintainer="Esad"

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json  /app/package.json  

RUN npm install 
RUN npm install -g @angular/cli

COPY . .

RUN npm run build

EXPOSE 4200

CMD ng serve --host 0.0.0.0