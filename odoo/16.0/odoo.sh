#!/bin/bash
workdir=/home/$USER/odoo
exec python3 $workdir/odoo/odoo-bin -c $workdir/odoo.conf
