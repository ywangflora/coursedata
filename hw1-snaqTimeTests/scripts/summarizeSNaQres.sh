# script to summarize a bunch of SNaQ analyses (2 files per analysis)
# run from coursedata/hw1-snaqTimeTests like this:
# bash scripts/summarizeSNaQres.sh

resfile=results/summary.csv
# directory results/ needs to exist: do `mkdir results` first
echo analysis,h,CPUtime >  $resfile
for outfile in out/*.out
do
  # first: find the root of filenames, common to .out and .log files
  # without using "basename": instead using grep and regular expressions
  root=$(echo $outfile | grep -E "\w+.out" -o | grep -o -E "\w+" | head -n 1)
  ## same thing but using basename:
  # root=$(basename -s ".out" $outfile)
  logfile=log/${root}.log
  # echo root: $root, files: $logfile and $outfile
  echo "extracting info for $root"
  # next: extract hmax and CPU time
  h=$(grep "hmax" $logfile | head -n 1 | grep -oE "\d+")
  CPUtime=$(grep "Elapsed time:" $outfile | grep -oE "\d+\.\d+")
  # finally: append root name, # hybridizations and CPU time to summary file
  echo $root,$h,$CPUtime >>  $resfile
done
echo "done: see result file in $resfile"
