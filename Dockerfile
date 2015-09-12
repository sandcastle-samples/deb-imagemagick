FROM debian:wheezy

ADD rose.jpg /app/rose.jpg
WORKDIR /app

RUN apt-get update \
    && apt-get install -y imagemagick \
    && sudo apt-get autoremove

CMD ["convert", "rose.jpg", "rose.png"]
