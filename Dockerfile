#alpine-image
FROM alpine

#vim
RUN apk add --update vim git

#ENTRYPOINT
ENTRYPOINT ["vim"]