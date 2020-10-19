#!/bin/sh
cd /mnt/hgfs/Development/Odoo/odoo_test_modules
if ! git diff-index --quiet HEAD --; then
    echo "Changes"
fi