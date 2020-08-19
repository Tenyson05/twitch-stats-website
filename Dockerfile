FROM node:latest
#WORKDIR specifies the directory application's code will live within
WORKDIR /app
#Copy package.json to directory
COPY package.json /app
#yarn install to install needed packages
RUN yarn install
#copy the rest of the application
COPY . /app

#Start applicaiton using yarn start
CMD ["yarn", "start"]