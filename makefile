all: README.md

README.md: guessing_game.sh
	touch README.md
	echo "# The Guessing Game" > README.md
	echo "## Unix Workbench Final Assignment" >> README.md
	echo "* Purpose: To create a bash script labeled "guessing_game.sh" to prompt the user to guess the number of files in a given directory." >> README.md
	
	echo "* Make Date:" >> README.md
	date >> README.md

	echo "Lines of code in script:" >> README.md
	cat guessing_game.sh | wc -l >> README.md

clean:
	rm README.md
