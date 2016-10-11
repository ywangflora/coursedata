one solution
============

There are many possible good scripts to get the job done;
this is just one way.

This directory contains 2 scripts:

1. for exercise 1: `normalizeFileNames.sh`
  normalizes names of data files starting with "timetest"
  in directories `hw1-snaqTimeTests/log` and in `hw1-snaqTimeTests/out`,
  to make the numbering system use 2 digits for all files.

  I ran it from `hw1-snaqTimeTests/` like this:
  `bash scripts/normalizeFileNames.sh`.

2. for exercise 2: `summarizeSNaQres.sh`
  summarizes the output of SNaQ analyses
  (2 files per analysis: `.log` and `.out`).

  Run it from `hw1-snaqTimeTests/` like this:
  `bash scripts/summarizeSNaQres.sh`.  
  Output: file `results/summary.csv` with 1 row per SNaQ analysis and 3 columns: analysis name, # hybridizations (h) and computing time (CPUtime).
