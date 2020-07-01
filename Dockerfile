FROM node
MAINTAINER pea3nut "1484227811@qq.com"

RUN mkdir /pxer-homepage
COPY . /pxer-homepage/

WORKDIR /pxer-homepage
RUN rm -rf /pxer-homepage/node_modules
RUN npm install --production

EXPOSE 80

ENTRYPOINT ["npm","run","server"]
