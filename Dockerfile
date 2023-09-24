FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

ENV DISPLAY :0

ENV USERNAME developer

WORKDIR /app

# At the very basic level
# we need a jre and swt for
# installer to work.
RUN apt update \
    && apt install -y openjdk-17-jre-headless \
        libswt-gtk-4-java sudo

COPY bin .

RUN ln -s /app/eclipse-installer/eclipse-inst /bin/eclipse

# create and switch to a user
RUN echo "backus ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN useradd --no-log-init --home-dir /home/$USERNAME --create-home --shell /bin/bash $USERNAME
RUN adduser $USERNAME sudo
USER $USERNAME

WORKDIR /home/$USERNAME

CMD "eclipse"