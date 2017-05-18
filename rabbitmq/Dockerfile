FROM rabbitmq:3.6.1-management

MAINTAINER montolsaklor@gmail.com

RUN apt-get update -y && apt-get install -y python && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /

COPY rabbitmqadmin /usr/bin/rabbitmqadmin
COPY rmq-setup.sh /rmq-setup.sh

CMD ["rabbitmq-server"]

EXPOSE 4369 5671 5672 25672 15671 15672
