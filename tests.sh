#!/bin/bash
clear
if COMMAND_WHOSE_EXIT_STATUS_IS_0_UNLESS_ERROR_OCCURRED
then echo "Command succeeded."
else echo "Command failed."
fi
echo 

echo "Testing \"0\""
echo
 if [ 0 ] 
 then
	 echo "0 is true"
 else
	 echo "0 is false"
 fi
 echo

 echo "Testing \"1\""
 echo 

 if [ 1 ]
 then
	 echo "1 is true"
 else
	 echo "0 is false"
 fi
 echo

 echo "testing \"false\""

 echo

 if [ "false" ]
 then
	 echo "\"false\" is true." 
 else
	 echo "\"false\" is false."
 fi
 echo
echo "Testing \"\$false\"" # Again, uninitialized variable.
if [ "$false" ]
then
echo "\"\$false\" is true."
else
echo "\"\$false\" is false."
fi # "$false" is false.
# Now, we get the expected result.
echo

 exit 0

