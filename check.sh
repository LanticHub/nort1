error() {
	message "No Northern configuration file"
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
