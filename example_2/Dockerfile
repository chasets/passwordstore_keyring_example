FROM python:3.11-slim-bullseye

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install wget curl git zsh vim sudo pass

RUN useradd --user-group --system --create-home --no-log-init -s /usr/bin/zsh app
RUN adduser app sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER app
WORKDIR /home/app

# Install ohmyzsh with dst theme
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh)" -- \
    -t dst

CMD ["/usr/bin/zsh"]

