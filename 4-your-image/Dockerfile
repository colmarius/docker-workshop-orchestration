FROM alpine:latest

ARG PORT
ENV PORT ${PORT:-8080}
EXPOSE $PORT

RUN echo "Listening at $PORT"

COPY date_server.sh /

CMD ["/date_server.sh"]
