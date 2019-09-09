echo "Welcome to the Guessing Game!"
echo "Give it a shot."

function guess_file_count {
	echo "How many files are in the current directory?"
	read guessed

	number_of_files=$(ls | wc -l)
}

guess=0

while [[ $guess -ne 3 ]]
do
	guess_file_count
	if [[ $guessed -lt $number_of_files ]]
	then
		echo "Sorry, $guessed is too low, please try again."
	elif [[ $guessed -gt $number_of_files ]]
	then
		echo "Sorry, $guessed is too high, please try again."
	elif [[ $guessed -eq $number_of_files ]]
	then
		echo "Well done! There are $guessed files in this directory."
		guess=3
	fi
done

echo "Congratulations on getting the right answer!"
