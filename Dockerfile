FROM node:12
# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# Expose the network port that your app is using
# eg. if your server runs on 8080, this should be 8080
EXPOSE 3000

# Command to run the server goes here
CMD [ "npm", "start" ]
