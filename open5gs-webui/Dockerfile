FROM node:19

ARG OPEN5GS_VERSION=v2.8.0

WORKDIR /usr/src/
RUN git clone --depth 1 --branch ${OPEN5GS_VERSION} https://github.com/open5gs/open5gs.git && \
    cd open5gs/webui && \
    npm install && \
    npm run build

WORKDIR /usr/src/open5gs/webui
CMD ["npm", "run", "start"]

EXPOSE 9999
