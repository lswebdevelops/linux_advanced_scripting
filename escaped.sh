#!/bin/bash
#
## escaped.sh: escaped characters
#############################################################
### First, let's show some basic escaped-character usage. ###
#############################################################
# Escaping a newline.
# ------------------
#

clear
echo ""
echo "This will print 
as two lines."
echo "This will print \
as one line."



echo; echo

echo "=================" 



echo "\v\v\v\v"  # Print \v\v\v\v literally. 

# Use the -e option with 'echo' to print escaped characters.
#


echo "=================" 
echo "Vertical tabs"
echo -e "\v\v\v\v"  # prints 4 vertical tabs. 0
echo "=================" 

echo "QUOTATION MARK"
echo -e "\042" # Prints " (quote, octal ASCII character 42).


# using \t for tab: and \0** for octal values : \042 prints:  <">
echo $'\tspace \t \050\051 \tspace'

# Assigning ASCII characters to a variable.
# ----------------------------------------
quote=$'\042' # " assigned to a variable.
echo "ASCII value $quote"






exit 0

