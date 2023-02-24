FROM ubuntu:22.04

ENV LANG=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN echo "\033[1;34mAdd Emacs PPA.\033[0m" &&\
  apt-get update &&\
  add-apt-repository -y ppa:kelleyk/emacs &&\
  apt-get update
  
RUN echo "\033[1;34mUpdate.\033[0m" &&\
  apt-get update &&\
  apt-get install -y emacs28-nox &&\
  echo "\033[1;32mAll done.\033[0m"
  
RUN echo "\033[1;36mAdd non-root user.\033[0m" &&\
  groupadd runner &&\
  useradd -m -g runner -G sudo -u 1000 -c "Docker image runner" runner &&\
  echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers &&\
  echo "Add command to run command with user 'runner'" &&\
  printf '#!/usr/bin/env sh\nsudo -i -u runner bash <<EOF\n$@\nEOF\n' > /bin/runner &&\
  chmod +x /bin/runner

USER runner
