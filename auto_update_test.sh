#!/bin/sh
reldir=`dirname $0`
cd $reldir
if git fetch origin 11.0 &&
    [ `git rev-list HEAD...origin/11.0 --count` != 0 ] &&
    git merge origin/11.0
then
    echo 'Initiating Update'
    git pull
    su odoo11 -c "python3 /opt/odoo11/odoo11-server/odoo-bin -c /etc/odoo11-server.conf -d test_auto_update -u all --stop-after-init --no-http"
    service odoo11-server restart
else
    echo 'Already Upto Date'
fi