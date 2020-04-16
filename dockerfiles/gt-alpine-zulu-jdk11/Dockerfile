FROM aetherv0id/gt-alpine-vanilla:latest

RUN wget https://cdn.azul.com/public_keys/alpine-signing@azul.com-5d5dc44c.rsa.pub \
    && cp alpine-signing@azul.com-5d5dc44c.rsa.pub /etc/apk/keys/ \
    && echo "https://repos.azul.com/zulu/alpine" >> /etc/apk/repositories \
    && apk update \
    && apk add zulu11-jdk-headless  

CMD ["sh"]
