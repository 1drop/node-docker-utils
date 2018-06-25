FROM node:8-slim

RUN npm install --production --loglevel warn -g eslint eslint-config-standard eslint-plugin-promise eslint-plugin-standard eslint-plugin-import@latest eslint-plugin-node@latest > /dev/null

COPY ./scripts /home/node

WORKDIR /home/node

RUN chmod +x ./*.sh

CMD ["/bin/bash"]

USER root
