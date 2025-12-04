guessnum=0
for i in $(ls -p | grep -v /)
do
	guessnum=$guessnum+1
done

function getguess {
	echo "How many files are there in the current directory?"
	read guess
}

function evalguess {
	if [[ $guess =~ ^[123456789][1234567890]*$ ]]
	then
		if [[ $guessnum -lt $guess ]]
		then
	                echo "Too high, try again"
	        elif [[ $guessnum -gt $guess ]]
	        then
		        echo "Too low, try again"
		else
			echo "Congratulations, that's correct!"
	        fi
	else
		echo "Must guess a positive number"
	fi
}

guess=-1
while [[ ! $guess =~ ^[123456789][1234567890]*$ || $guessnum -ne $guess ]]
do
	getguess
	evalguess
done
