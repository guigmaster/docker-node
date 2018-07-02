# Official Nodejs Image using Alpine
FROM node:8.9-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install --silent --progress=false \
  && npm cache clean --force

# Bundle app source
COPY . .

EXPOSE 3000
CMD npm start
