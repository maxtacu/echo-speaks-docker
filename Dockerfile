FROM node:16

WORKDIR /app

RUN git clone https://github.com/tonesto7/echo-speaks-server.git .
RUN npm install

EXPOSE 8091
ENV hubPlatform="Hubitat"
ENV useHeroku=false

CMD [ "node", "index.js" ]