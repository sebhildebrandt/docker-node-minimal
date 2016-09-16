FROM mhart/alpine-node
MAINTAINER hildebrandt@plus-innovations.com

# If you have native dependencies, you'll need extra tools
# RUN apk add --no-cache make gcc g++ python
RUN apk add --no-cache git 

ARG APP_DIR
ENV APP_DIR ${APP_DIR:-/usr/src/app}

ARG APP_PORT
ENV APP_PORT ${APP_PORT:-3000}

ENV NODE_ENV production

# Create app directory
RUN mkdir -p ${APP_DIR} 
WORKDIR ${APP_DIR}
COPY package.json ${APP_DIR}

# Install app dependencies
RUN npm install --production

# Bundle app source
COPY ./app ${APP_DIR}/app

EXPOSE ${APP_PORT}
ENTRYPOINT [ "npm", "start" ]
