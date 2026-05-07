mv $SCRATCH/nvflow/run $SCRATCH/nvflow/run.$(date +%Y%m%d_%H%M%S).bak
mkdir -p $SCRATCH/nvflow/run/intermed
mkdir -p $SCRATCH/nvflow/run/shared

# cp -r run.20260427_080836.bak/intermed/*/graphs run/intermed

echo "moved run folder over"
