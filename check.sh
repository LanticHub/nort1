error() {
	message "An error occured, you must fix it to continue!"
	exit 1
}

settings() {
CONFDIR=~/.northern
CONFFILE=$CONFDIR/northern.conf
	if [ $? -ne 0 ]; then error; fi
	echo "$(<$CONFFILE)"
	}
	
checks() {
CLIDIR=usr/local/bin
CLIFILE=$CLIDIR/northern-cli
$CLIFILE getinfo
$CLIFILE masternode status
}

settings
checks