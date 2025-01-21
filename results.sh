#!/bin/bash
BASE_DIR="/home/jeffenel/Desktop/dev/mlir-df/microbench"
echo $BASE_DIR
if [ ! -d "$BASE_DIR" ]; then
	echo "Error: BASE_DIR ($BASE_DIR) does not exist or is not a directory."
	exit 1
fi

for dir in "$BASE_DIR"/*/; do
	if [ -x "$dir/bench" ]; then
		echo "Running benchmark in $dir"
		"$dir/bench"
		echo "Finished running benchmark in $dir"
	else
		echo "No executable found in $dir"
	fi
done
