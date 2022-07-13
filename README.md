# Prusti Performance Monitoring & Benchmarking

This repository contains two primary crates: 
* [`collector`](./collector): gathers data for each bors commit
* [`site`](./site): [displays](https://perf.rust-lang.org) the data and provides a GitHub bot for on-demand benchmarking

Additional documentation on running and setting up the frontend and backend can
be found in the `README` files in the `collector` and `site` directories.

Additional documentation on the benchmark programs can be found in the `README`
file in the `collector/benchmarks` directory.

## Quick Start

1. Run the script `scripts/setup_aws.sh` to install necessary dependencies
2. Run the database with the command `scripts/start_db.sh`
3. Run the script `scripts/generate_prusti_benchs.sh` to benchmark all BORS commits from Prusti
4. To run the server, run the command `scripts/run_site.sh` from this directory

## Adding Benchmarks

Benchmarks should be placed in the `collector/benchmarks` folder. Ensure that
there is a `Cargo.lock` file in the benchmark; this can be generated by running
the `cargo build` command.

## Notes

Currently all benchmarks use Z3 version 4.8.6.

## TODO

- [ ] Use Viperserver for more consistent results
- [ ] Remove first iteration of each run from statistics
- [ ] Github Integration
- [ ] Warnings for performance regressions
- [ ] Support comparison of different variants of Prusti (i.e., using different configuration parameters)
- [ ] Also include less interesting tests
- [ ] Also include very long tests
- [ ] Place those tests in their own categories

