############################################################
# Dockerfile for Node.js to run sails.js application
############################################################

FROM node

MAINTAINER Andi N. Dirgantara <andi.n.dirgantara@gmail.com>

RUN mkdir /app
COPY . /app/
WORKDIR /app
RUN npm install

ENTRYPOINT ["node", "/app/app.js"]

# Expose ports.
EXPOSE 1337
