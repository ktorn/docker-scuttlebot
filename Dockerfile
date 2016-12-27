FROM node:5.12

MAINTAINER Filipe Farinha <filipe@ktorn.com>

RUN npm install -g scuttlebot@9.4.2

ADD scripts/run-sbot.sh /run-sbot.sh
RUN chmod +x /run-sbot.sh

EXPOSE 8008

CMD [ "/run-sbot.sh" ]
