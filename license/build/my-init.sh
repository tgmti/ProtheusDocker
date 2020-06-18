#!/usr/bin/env bash

set -e
set -x

ulimit -s 1024
ulimit -n 65536

exec "/totvs/license/bin/appserver/appsrvlinux"
