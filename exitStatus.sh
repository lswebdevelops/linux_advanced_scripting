#!/bin/bash
#
echo "Hello"

echo "the status is: $?"
lsskjskjs # unrecognized command.
echo $? # non-zero exit status returned = command failed to execute.


echo 


 echo "----------------------"

exit 113 # will return 113 to shell.
	# to revify this, type "echo $?" after script terminates. 
	#
echo $?

