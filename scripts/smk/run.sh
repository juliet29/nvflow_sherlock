#!/bin/bash

uv sync

SMKRUN="uv run snakemake \
  --cores 4  \
  --configfile=smkconfig/run.yaml \
  --keep-going"

$SMKRUN nvflow_graphs_create_target || true
wait
#
$SMKRUN nvflow_ambient_create_target
$SMKRUN nvflow_metrics_consolidate_target
$SMKRUN nvflow_qois_consolidate_target
