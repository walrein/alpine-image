#alpine-image
FROM alpine

ENV ver 3.3
RUN echo $ver

RUN apk add --update --no-cache zsh


#user
RUN echo 'root:root' |chpasswd
RUN adduser -S walrein \
	&& echo "walrein ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
	&& echo 'walrein:walrein' | chpasswd
#RUN chsh -s /usr/bin/zsh walrein

USER walrein
WORKDIR /home/walrein
ENV HOME /home/walrein

#CMD ["/usr/bin/zsh"]
