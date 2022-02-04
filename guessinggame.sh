guessnum=0
skip=2
for i in $(ls -l)
do
	if [[ $(($skip % 9)) -eq 4 ]]
	then
		if [[ $i =~ ^- ]]
		then
			let guessnum=$guessnum+1
		fi
	fi
	let skip=$skip+1
done

function getguess {
	echo "How many files are there in the current directory?"
	read guess
}

getguess
while [[ $guessnum -ne $guess ]]
do
	if [[ $guess -gt $guessnum ]]
	then
		echo "Too high, try again"
	else
		echo "Too low, try again"
	fi
	getguess
done
echo "Congratulations, that's correct!"
