# Odoo Scripts

## nginx.conf

This script creates an Nginx configuration to set Odoo as a server.
Please, be aware this script is intended to be used just to redirect the requisitions
to port 80. This is excelent when the requisitions comes from a LoadBalancer
like AWS Application Load Balancer and the SSL configuration is handled
outside the Odoo server.
If you want to define the 443 port, you should do this based on your custom
configurations.

To use this script, you just need to update the `odoo.domain.com` by your DNS

## odoo.service and odoo.sh

The odoo.service and odoo.sh sould be use together.
The odoo.service calls the odoo.sh script to execute the Odoo by runing
`systemctl start odoo` or similar commands.
Inside the odoo.service file you sould edit the `ExecStart` parameter to point
to the odoo.sh file in your server.
And the odoo.sh file contains the Python3 command line to execute the odoo by
calling the odoo-bin executable file.

All these scripts are pre defined to work in an environment like this:
Odoo directory: `/home/odoo/odoo`
Odoo user: `odoo`
Odoo bin files: `/home/odoo/bin`
