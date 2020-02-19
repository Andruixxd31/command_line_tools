#!/bin/bash
echo "Starting program at $(date)"

echo "Running program $0 with $# arguments with pid $$"

for file in "$@"; do #$@ takes all arguments
	grep foobar "$file" > dev/null 2> dev/null # 2>: output of the error
	#grep has a exit status if a pattern is not found
	
	if [[ "$?" -ne 0 ]]; then
		echo "File $file does not have foobar, adding one"
		echo "# foobar" >> "$file"
	fi
done
