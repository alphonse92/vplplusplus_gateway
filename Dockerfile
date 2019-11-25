FROM nginx:alpine
RUN apk add --update python py-pip && pip install j2cli
WORKDIR /usr/app/
COPY ./.nginx .
ENTRYPOINT ["/usr/app/entrypoint.sh"]


