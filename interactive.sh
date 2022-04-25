#!/bin/bash

# reset getopts
OPTIND=1

# init vars
num_cpus=8
num_gpus=0
amt_rams=8G

usage() {
    echo "Usage: $0 [-h] [-c <1|40>] [-g <0|2>] [-r <1G|128G>]
	-c <int>   :  number of CPUs
	-g <int>   :  number of GPUs
	-r <int>G  :  amount of RAM
"
}

while getopts ":h:c:g:r:" opt; do
    case "$opt" in
    h)
        usage
        exit
        ;;
    c)  num_cpus=${OPTARG}
        ;;
    g)  num_gpus=${OPTARG}
        ;;
    r)  amt_rams=${OPTARG}
        ;;
    *)
        usage
        exit
        ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${num_cpus}" ] || [ -z "${num_gpus}" ] || [ -z "${amt_rams}" ]; then
    usage
    exit
fi

echo "Parameters:
	CPUs: ${num_cpus}
	GPUs: ${num_gpus}
	RAM:  ${amt_rams}
"

echo 'srun -n ${num_cpus} --gres=gpu:${num_gpus} --nodes=1 --mem ${amt_rams} --job-name=iJob --pty bash
'

echo "srun -n ${num_cpus} --gres=gpu:${num_gpus} --nodes=1 --mem ${amt_rams} --job-name=iJob --pty bash
"

srun -n ${num_cpus} --gres=gpu:${num_gpus} --nodes=1 --mem ${amt_rams} --job-name=iJob --pty bash
