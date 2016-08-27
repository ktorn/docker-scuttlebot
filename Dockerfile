FROM node:5.12

RUN npm install -g scuttlebot

ADD scripts/run-sbot.sh /run-sbot.sh
RUN chmod +x /run-sbot.sh

EXPOSE 8008

CMD [ "/run-sbot.sh" ]