all: README.md

README.md:
	touch README.md
	echo "# guessinggame.sh" > README.md
	echo "make ran at: " >> README.md
	date >> README.md
	echo " " >> README.md
	echo "lines in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
