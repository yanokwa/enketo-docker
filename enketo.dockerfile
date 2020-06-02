FROM enketo/enketo-express:2.3.4

ENV ENKETO_SRC_DIR=/srv/src/enketo_express

WORKDIR ${ENKETO_SRC_DIR}

COPY files/enketo/config.json.template ${ENKETO_SRC_DIR}/config/config.json

RUN npm install --production

EXPOSE 8005

CMD ["pm2", "start", "--no-daemon", "app.js", "-n", "enketo"]
