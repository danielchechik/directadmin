Version 1.0

This is a simple script to change a specific user configuration of the entire users in directadmin

Usage case:
I need to disable "suspend_at_limit" to entire users.

Another example:
I want to prevent all users from changing DNS configuration (dnscontrol=OFF)

How to use:

It's case senstive so be carefull

./set_user_permissions.sh [parameter as apear in the configuration file] [current value] [new value]

example:
./set_user_permissions.sh dnscontrol ON OFF
 
