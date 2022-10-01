FROM node:carbon

WORKDIR /usr/src/
ADD https://api.github.com/repos/open5gs/open5gs/git/refs/heads/main version.json
RUN git clone https://github.com/open5gs/open5gs.git && \
    cd open5gs/webui && \
    npm install && \
    npm run build

WORKDIR /usr/src/open5gs/webui
CMD npm run dev

EXPOSE 3000
