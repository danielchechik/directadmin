#!/bin/sh

if [ "$#" -ne 3 ]; then
	echo "Usage: $0 "
	echo "1: parameter"
	echo "2: old value"
	echo "3: new value"
fi

ADMIN_USER="admin"
TMP="tmp"
BASE_FOLDER="/usr/local/directadmin/data/users"
USER_CONF="user.conf"

for i in `ls $BASE_FOLDER`; do
{
    	if [ "$i" = "$ADMIN_USER" ] || [ "$i" = "$TMP" ]; then
            continue;
    	fi

    	if [ -f "$BASE_FOLDER/$i/$USER_CONF" ]; then
    		#while read p; do
			#	echo $p
			#done < $BASE_FOLDER/$i/$USER_CONF
			find $BASE_FOLDER/$i/ -name "$USER_CONF" -type f -print0 | xargs -0 sed -i "" -e "s/$1=$2/$1=$3/g"
		fi
};
done;
exit 0;