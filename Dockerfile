FROM node:7.10

MAINTAINER Filipe Farinha <filipe@ktorn.com>

RUN npm install -g scuttlebot@10.5.0

ADD scripts/run-sbot.sh /run-sbot.sh
RUN chmod +x /run-sbot.sh

EXPOSE 8008

CMD [ "/run-sbot.sh" ]
