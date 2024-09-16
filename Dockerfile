FROM gcc:14.2.0

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y cmake sudo

RUN groupadd -g 1000 dev

RUN useradd -ms /bin/bash -u 1000 -g 1000 -G sudo dev

RUN echo 'dev ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN chown -R dev:dev /usr/src/app && chmod -R 755 /usr/src/app

USER dev
