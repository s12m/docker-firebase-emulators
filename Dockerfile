FROM node:20.2.0-bullseye-slim

RUN apt-get update -qq && \
    apt-get install -y openjdk-17-jre-headless && \
    npm install -g firebase-tools@12.2.1

ENV WORKDIR="/opt/firebase"
WORKDIR ${WORKDIR}

CMD ["bash", "-c", "firebase emulators:start --import ${WORKDIR}/data/exported --export-on-exit"]
