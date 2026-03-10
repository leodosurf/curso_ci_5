# syntax=docker/dockerfile:1
# check=skip=SecretsUsedInArgOrEnv
FROM ubuntu:latest
EXPOSE 8000
WORKDIR /app
ENV HOST=localhost DBPORT=5432
ENV USER=root PASSWORD=root DB_NAME=root
COPY ./main main
RUN chmod +x main
COPY ./templates/ templates/
CMD [ "./main" ]
