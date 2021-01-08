FROM node:alpine

COPY ./dist /usr/local/lib/node_modules/simple-pilet-service
COPY ./node_modules /usr/local/lib/node_modules/simple-pilet-service/node_modules
RUN chmod 755 /usr/local/lib/node_modules/simple-pilet-service/cli.js \
    && ln -s /usr/local/lib/node_modules/simple-pilet-service/cli.js /usr/local/bin/pilet-service

EXPOSE 9000
CMD pilet-service