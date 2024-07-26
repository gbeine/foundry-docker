FROM node:lts-alpine

ARG VERSION

ENV FOUNDRY_DATA=/data
ENV FOUNDRY_HOME=/foundry
ENV FOUNDRY_DIST=FoundryVTT-$VERSION.zip

RUN set -eux; \
	\
	mkdir -p $FOUNDRY_HOME

COPY $FOUNDRY_DIST /

RUN set -eux; \
	\
	unzip -d $FOUNDRY_HOME $FOUNDRY_DIST; \
	rm $FOUNDRY_DIST

VOLUME $FOUNDRY_DATA

EXPOSE 30000

CMD node $FOUNDRY_HOME/resources/app/main.js --dataPath=$FOUNDRY_DATA --headless
