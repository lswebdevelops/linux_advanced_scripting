#!/bin/bash
# cleanup, version 3


# Warning:
# -------
# This script uses quite a number of features that will be explained
#+ later on.
# By the time you've finished the first half of the book,
#+ there should be nothing mysterious about it.


LOG_DIR=/var/log
ROOT_UID=0 # Only users with $UID 0 have root privileges.
LINES=50 # Default number of lines saved.
E_XCD=86 # Can't change directory?
E_NOTROOT=87 # Non-root exit error.


# run  as root, of course, 

if [ "$UID" -ne "$ROOT_UID" ]
then
	echo "Must be root to run this script."
	exit $E_NOTROOT
fi 

if [ -n "$1" ]
#test whether command-line argument is present (non-empty) .
then 
	lines=$1
else
	lines=$LINES # Default, if not specified on command-line.
fi

cd $LOG_DIR

if [ `pwd` != "$LOG_DIR" ] # or if [ "$PWD" != "$LOG_DIR" 
							# not in /var/log? 
then
	echo "Can't change to $LOG_DIR."
	exit $E_XCD
fi  # always dowblecheck if in right directory before messing with log file. 

# Far more efficient is:
#
# cd /var/log || {
# echo "Cannot change to necessary directory." >&2
# exit $E_XCD;
#} 


tail -n $lines messages > mesg.temp #Save last section of message olog file. 
mv mesg.temp messages 				# Rename it as system log file.


cat /dev/null > wtmp # ': > wtmp ' and '> wtmp 'have the same effect 
echo "Log fiels cleaned up." 
exit 0
