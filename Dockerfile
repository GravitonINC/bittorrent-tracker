# node:16 not working so far:
# https://github.com/webtorrent/bittorrent-tracker/actions/workflows/release.yml
FROM node:14

WORKDIR /app
COPY . /app
RUN npm install

# please expose tcp port for both HTTP and WebSocket Tracker
EXPOSE 8000/tcp
# please expose udp port for UDP Tracker
EXPOSE 8000/udp

CMD [ "node", "./bin/cmd.js" ]
