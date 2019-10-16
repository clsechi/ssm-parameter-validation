FROM zrpaplicacoes/docker-in-node:8.9.4-alpine

# Maintainer Information
LABEL author="ZRP Aplicações Informáticas LTDA - ME <zrp@zrp.com.br>"
LABEL vendor="ZRP Aplicações Informáticas LTDA - ME"
LABEL license="GPLv3"

RUN apk update && apk upgrade

COPY ./docker-package.json /home/node/app/package.json

# Install package
RUN npm install

# Run package
CMD ["npx", "@zrpaplicacoes/ssm-parameter-validation", "execute"]
