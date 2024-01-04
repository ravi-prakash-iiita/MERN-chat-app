#  Dockerfile for Node Express Backend

FROM node:20.10-alpine

# Create App Directory
WORKDIR /usr/src/app

# Install Dependencies
COPY package.json .

RUN yarn

# Copy app source code
COPY . .

# Exports
EXPOSE 5000

CMD ["yarn","start"]