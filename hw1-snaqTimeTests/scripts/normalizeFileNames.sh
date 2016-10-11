# script to normalize names of files starting with "timetest",
# to make the numbering system use 2 digits for all files.
# ran from coursedata/hw1-snaqTimeTests like this:
# bash scripts/normalizeFileNames.sh

for i in {1..9}
do
  for ext in out log
  do
    infile="$ext/timetest${i}_snaq.$ext"
    outfile=$ext/timetest0${i}_snaq.$ext
    #echo "will do this: mv $infile $outfile"
    mv $infile $outfile
  done
done
