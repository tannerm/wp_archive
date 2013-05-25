#!/bin/bash
# http://stackoverflow.com/questions/5457286/drop-multiple-databases

DB_STARTS_WITH="wp_archive"
MUSER="root"
MPWD="blank"
MYSQL="mysql"

echo "Starting."
DBS="$($MYSQL -u$MUSER -p$MPWD -Bse 'show databases')"
for db in $DBS; do
	if [[ "$db" == $DB_STARTS_WITH* ]]; then
		echo "Deleting $db"
		$MYSQL -u$MUSER -p$MPWD -Bse "drop database $db;"
	fi
done

echo "Finished."
exit 0
