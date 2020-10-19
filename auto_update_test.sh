#!/bin/sh
reldir=`dirname $0`
cd $reldir
if git fetch origin 11.0 &&
    [ `git rev-list HEAD...origin/11.0 --count` != 0 ] &&
    git merge origin/11.0
then
    echo 'Initiating Update'
    git pull
    sh update_odoo.sh
else
    echo 'Already Upto Date'
fi