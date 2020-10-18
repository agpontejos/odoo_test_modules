#!/bin/sh
cd /mnt/hgfs/Development/Odoo/odoo_test_modules
if git checkout master &&
    git fetch origin master &&
    [ `git rev-list HEAD...origin/master --count` != 0 ] &&
    git merge origin/master
then
    echo 'Updated!'
else
    echo 'Not updated.'
fi