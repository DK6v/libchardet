ARG TIMEZONE="Europe/Moscow"

FROM ubuntu:20.04 as pre-build
ARG TIMEZONE

# Set timezone
RUN ln -snf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && echo ${TIMEZONE} > /etc/timezone

# Update packages
RUN apt-get update

RUN apt-get install --assume-yes \
autoconf \
automake \
cmake \
make \
g++

FROM scratch as build

COPY --from=pre-build / /

ENTRYPOINT [ "/source/docker/build.sh" ]