FROM alpine:latest

RUN apk update \
    && apk upgrade \
    && apk add curl wget git bash bash-doc bash-completion grep grep-doc \
    && apk add nano less less-doc binutils findutils pciutils readline util-linux util-linux-doc
# lbu

RUN mkdir /opt/deploy && mkdir /opt/bckup
#    && lbu status -av \
#    && lbu package /opt/bckup/bckup-alpine-vanilla.apkovl.tar.gz
    
CMD ["sh"]


