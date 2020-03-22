FROM python:3.7-alpine3.10

RUN apk update --no-cache \
    && apk add --no-cache bash sudo git vim curl zip

RUN addgroup -S loginuser \
    && adduser -S loginuser -G loginuser \
    && echo "loginuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER loginuser
WORKDIR /home/loginuser

COPY --chown=loginuser:loginuser ascii ascii
COPY --chown=loginuser:loginuser bin bin
COPY --chown=loginuser:loginuser conf/.bashrc .bashrc

RUN chmod 777 bin/*

CMD [ "bash" ]
