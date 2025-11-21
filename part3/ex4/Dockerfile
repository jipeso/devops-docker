FROM docker:26-dind

RUN apk update && apk add --no-cache bash git

WORKDIR /app

COPY builder.sh /app/builder.sh

RUN chmod +x /app/builder.sh

ENTRYPOINT [ "/app/builder.sh" ]
