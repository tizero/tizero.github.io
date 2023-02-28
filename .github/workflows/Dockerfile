FROM alpine:3.16

RUN apk add --no-cache emacs-nox git tar
RUN git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.config/emacs

COPY init.el ~/.config/doom/init.el

RUN ~/.config/emacs/bin/doom install
