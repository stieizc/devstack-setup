#!/bin/sh
DEVSTACK=${HOME}/devstack
if [ ! -d $DEVSTACK ]; then
    git clone https://git.openstack.org/openstack-dev/devstack $DEVSTACK
fi
cp local.conf ${DEVSTACK}
cd $DEVSTACK && ./stack.sh
