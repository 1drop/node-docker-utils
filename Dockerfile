FROM node:8-slim

RUN npm install --production --loglevel warn -g stylelint stylelint-config-standard eslint eslint-config-standard eslint-plugin-compat eslint-plugin-promise eslint-plugin-standard eslint-plugin-import@latest eslint-plugin-node@latest > /dev/null

WORKDIR /home/node

COPY ./bin/ /opt/docker/bin/

RUN chmod +x /opt/docker/bin/*.sh

CMD ["/bin/bash"]

USER root
