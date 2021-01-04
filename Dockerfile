from alpine
maintainer <Gautam Pachnanda>

RUN apk update
RUN apk upgrade
RUN apk add --no-cache bash

RUN mkdir -p /user/src/app
WORKDIR /usr/src/app

COPY . .

RUN yarn

EXPOSE 3000

CMD [ "yarn", "start" ]