# HPC
High Performance Compute Scripts (primarily customized for WPI's system)

## Setup ##
Make any changes to bashrc and bash_aliases you desire. Updates will be necessary over time.

Make a backup of your existing `~/.bashrc` and `~/.bash_aliases` files.

Run `./setup.sh`

## What's Included ##
- `interactive.sh`
  - A simple bash script for running an interactive bash setting. You could manually run one via srun, but often, that much work is not necessary for a simple test. Minor configuration parameters are enabled in the script and it prints out what srun command is run, in case you wish to manually do so in the future.
- `bashrc`
  - A bashrc profile that will setup some things for you such as color prompt and loading modules based on what machine you are logged into. This could use some more testing on Ace. Works nice with Turing.
- `bash_aliases`
  - Some basic commands that are setup to make life easier.
- `setup.bash`
  - A script to set up the 3 above elements for you.