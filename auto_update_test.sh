#!/bin/sh
cd /opt/odoo11/custom/odoo_test_modules
if git fetch origin 11.0 &&
    [ `git rev-list HEAD...origin/11.0 --count` != 0 ] &&
    git merge origin/11.0
then
    echo 'Updated!'
    git pull
    su odoo11 -c "python3 /opt/odoo11/odoo11-server/odoo-bin -c /etc/odoo11-server.conf -d test_auto_update -u auto_update_test --stop-after-init"

else
    echo 'Not updated.'
fi