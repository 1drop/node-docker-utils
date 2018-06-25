FROM node:8-slim

RUN npm install --production --loglevel warn -g eslint eslint-config-standard eslint-plugin-promise eslint-plugin-standard eslint-plugin-import@latest eslint-plugin-node@latest > /dev/null
WORKDIR /home/node

CMD ["/bin/bash"]

USER root
