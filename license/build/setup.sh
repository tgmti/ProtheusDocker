#!/usr/bin/env bash
set -e
set -x

TOTVS_PATH=/totvs/license

mkdir -p $TOTVS_PATH

cd /build/license
bash install

cd $TOTVS_PATH/bin/appserver/

chmod 777 $TOTVS_PATH/bin/appserver/*.so

echo $TOTVS_PATH/"bin/appserver/" > /etc/ld.so.conf.d/appserver64-libs.conf
/sbin/ldconfig

cp /build/my-init.sh /usr/local/bin/my-init.sh

rm -rf /build

cd $TOTVS_PATH/..
tar -czf license.tar.gz .
