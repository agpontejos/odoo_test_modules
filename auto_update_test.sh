#!/bin/sh
cd /mnt/hgfs/Development/Odoo/odoo_test_modules
if git fetch origin master &&
    [ `git rev-list HEAD...origin/master --count` != 0 ] &&
    git merge origin/master
then
    echo 'Updated!'
    git pull
    # su odoo11 -c "python3 /opt/odoo11/odoo11-server/odoo-bin -c /etc/odoo11-server.conf -d test_auto_update -u all --stop-after-init"
else
    echo 'Not updated.'
fi