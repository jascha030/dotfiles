#!/usr/local/bin/env bash

# Export remote DB to local dir
function msqexp() {
	$SSHU="$0"
	$SSHOST="$1"
	$DBNAME="$2"
	$DIR=

	[ -d "$HOME/.mysql-exports" ] || mkdir $HOME/.mysql-exports
	
	$(ssh $SSHU@$SSHOST mysqldump -u $DBUSR -p $DBNAME > $HOME/.mysql-exports/$DBNAME.sql)
}
