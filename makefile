all: README.md

README.md: guessing_game.sh
	echo "## Unix Workbench Final Assignment" > README.md
	echo "Purpose: To create a bash script labeled "guessing_game.sh" to prompt the user to guess the number of files in a given directory." >> README.md
	
	echo "Assignemtn Date: 'date+"%m-%d-%y"+"%T"' >> README.md
	echo "Lines of code in script: 'cat guessing_game.sh | wc - l' >> README.md

clean:
	rm README.md
