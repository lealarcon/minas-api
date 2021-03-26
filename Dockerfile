FROM node:12-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 4200

#CMD [ "node", "app.js" ]

#FROM node:10-alpine

#WORKDIR /usr/src/app


#COPY package*.json ./
#RUN npm install


#COPY . .
ENV NODE_ENV='production'

CMD [ "npm", "run"]
