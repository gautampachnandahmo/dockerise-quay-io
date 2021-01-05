from alpine
maintainer <Gautam Pachnanda>

RUN apk update && \
    apk upgrade && \
    apk add --no-cache bash && \
    set -eux && \
    apk add --no-cache nodejs yarn

RUN mkdir -p /user/src/app
WORKDIR /usr/src/app

COPY . .

RUN yarn

EXPOSE 3000

CMD [ "yarn", "start" ]