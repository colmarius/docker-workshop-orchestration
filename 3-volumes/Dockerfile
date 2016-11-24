FROM alpine:latest

ARG PORT
ENV PORT ${PORT:-8080}
EXPOSE $PORT

RUN echo "Listening at $PORT"

RUN mkdir /my-volume
VOLUME /my-volume

COPY start.sh /

CMD ["/start.sh"]
