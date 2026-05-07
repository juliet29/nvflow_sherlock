#!/bin/bash

SMKRUN="uv run snakemake \
  --cores 1 \
  --configfile=smkconfig/test.yaml"

$SMKRUN nvflow_graphs_create_target
wait
#
$SMKRUN nvflow_ambient_create_target
$SMKRUN nvflow_metrics_consolidate_target
$SMKRUN nvflow_qois_consolidate_target
