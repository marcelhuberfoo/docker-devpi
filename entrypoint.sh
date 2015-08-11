#!/bin/sh
set -e
set -x
umask 002

if [ "$1" = 'dummy' ]; then
  if [ ! -f $DEVPI_SERVERDIR/.serverversion ]; then
    gosu $UNAME devpi-server --start --host 0.0.0.0 --port 3141
    gosu $UNAME devpi use http://localhost:3141
    gosu $UNAME devpi login root --password=''
    gosu $UNAME devpi user -m root password="${DEVPI_PASSWORD}"
    gosu $UNAME devpi index -y -c public pypi_whitelist='*'
    gosu $UNAME devpi-server --stop --host 0.0.0.0 --port 3141
  fi
  # now start the server in the foreground to catch INT signal
  # -> stop this server using: docker kill --signal=INT container
  exec gosu $UNAME devpi-server --host 0.0.0.0 --port 3141
fi
exec "$@"
