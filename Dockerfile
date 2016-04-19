#alpine-image
FROM alpine

#apk
#RUN apk add --update --no-cache vim git zsh tmux

#user
RUN echo 'root:root' |chpasswd
RUN adduser -m walrein \
	&& echo "walrein ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
	&& echo 'walrein:walrein' | chpasswd
RUN chsh -s /usr/bin/zsh walrein

USER walrein
WORKDIR /home/walrein
ENV HOME /home/walrein

#CMD ["/usr/bin/zsh"]