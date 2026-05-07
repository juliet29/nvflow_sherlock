#!/bin/bash
# move existing results to backup and make new folder
mv $SCRATCH/nvflow/test $SCRATCH/nvflow/test.$(date +%y%m%d_%H%m).bak

mkdir -p $SCRATCH/nvflow/test
echo "moved test folder over"
