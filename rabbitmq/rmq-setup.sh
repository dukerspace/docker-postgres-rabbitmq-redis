#!/bin/bash
set -x
rma=/usr/local/rabbitmqadmin
superuser=guest
superpass=guest
vh=tradconnect
server=localhost
supuser=subuser
suppass=123456
tags=service

$rma declare user --user=$superuser --password=$superpass --host=$server name=$supuser password=$suppass tags=$tags
$rma declare permission --user=$superuser --password=$superpass vhost=$vh --host=$server user=$supuser configure=.* read=.* write=.*
