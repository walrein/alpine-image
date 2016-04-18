#alpine-image
FROM alpine

#apk
RUN apk add --update --no-cache vim git

#ENTRYPOINT
ENTRYPOINT ["vim"]