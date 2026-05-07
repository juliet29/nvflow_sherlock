#!/bin/bash
src_base="$SCRATCH/nvflow/run"
dest_base="$OAK/jnwagwu/nvflow/$(date +%y%m%d_%H%m)/"

copy_graphs() {
  src="$src_base/graphs"
  dest="$dest_base/graphs"
  n_samples=10

  echo "About to copy graphs to $dest"
  bash $HOME/scripts/copy_n_folders.sh \
    $src $dest $n_samples
}

copy_consolidated() {
  src="$src_base"
  dest="$dest_base/cons"
  csv="out.csv"

  echo "About to copy consolidated data to $dest"
  cp "$src/cons_ambient/$csv" "$dest/ambient.csv"
  cp "$src/cons_metrics/$csv" "$dest/metrics.csv"
  cp "$src/cons_qois/$csv" "$dest/qois.csv"
}

# call the functions
copy_graphs
copy_consolidated
