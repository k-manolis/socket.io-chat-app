FROM node:8

# create and set app directory
RUN mkdir -p /usr/src/app/
WORKDIR /usr/scr/app

#install app dependencies
COPY package.json ./

RUN npm install

#Bundle app source
COPY . .

# expose container port
EXPOSE 4000

CMD [ "npm", "start" ]
