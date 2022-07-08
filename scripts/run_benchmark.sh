#!/usr/bin/env bash

source scripts/vars
SHA=$1

cd "$PRUSTI_DIR"
./x.py build --release
cd "$PERF_DIR"
RUST_LOG=info PRUSTI_CHECK_OVERFLOWS=false $COLLECTOR bench_local \
    --id "commit:$SHA" \
    --cargo "$CARGO" \
    --profiles Check \
    --scenarios Full \
    --iterations "$NUM_ITERATIONS" \
    "$RUSTC"
