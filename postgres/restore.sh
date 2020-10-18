#!/bin/bash

cd /var/lib/postgresql/
tar -xzf pg12.01.25Init.tar.gz
pg_restore -U protheus -d protheus -F t -v pg12.01.25Init.tar
rm -rf pg12.01.25Init.*
