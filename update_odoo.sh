#!/bin/sh
su odoo11 -c "python3 /opt/odoo11/odoo11-server/odoo-bin -c /etc/odoo11-server.conf -d test_auto_update -u all --stop-after-init --no-http"
service odoo11-server restart