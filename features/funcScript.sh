
#! /usr/bin/bash
funcName(){
	echo "today is "$(date)
	echo "have a nice day!"
	return 3
#functions can have return values.
#This return value overwrites the ? exit status value.
}

anotherFunc(){
	echo "hello $1" 
	echo "hello $3"
#other args continue with $2, $3, etc. respectively.
}

variableScope(){
	#all variables in shell script is global unless otherwise specified.
	newVariable="Hey" 
	echo "$newVariable from inside the function"

	#to specify a variable as only local
	local localVariable="Hello"
	echo localVariable
}

echo "code starts"

#call function without args
funcName
echo "the return value is $?"

#call function with args
anotherFunc "Ken" 2 3
#exit status are supported in function calls
echo "last function call's exit status is ${?}"

#every variable in shell script is global unless otherwise specified
variableScope
echo "$newVariable from outside the function - Bash still remebered"
echo "can't read $localVariable from here"
echo "code continues"
