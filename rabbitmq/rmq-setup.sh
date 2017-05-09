#!/bin/bash
set -x
rma=/usr/local/rabbitmqadmin
superuser=guest
superpass=guest
vh=tradconnect
server=localhost
$rma declare user --user=$superuser --password=$superpass --host=$server name=tctmkdfsubuser password=123456 tags=tradconnect_service
$rma declare permission --user=$superuser --password=$superpass vhost=$vh --host=$server user=tctmkdfsubuser configure=.* read=.* write=.*
