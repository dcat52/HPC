alias sbrc="source ~/.bashrc"

q_params="\"%12i %12P %15j %10u %4t %10M %6D %18R %6C %8b \""
i_params="\"%20N %6c %8m %16f %8G %10T %10O \""

alias wsq="watch 'squeue -o $q_params'"
alias mysq="squeue -u $USER -o $q_params"
alias wmysq="watch 'squeue -u $USER -o $q_params'"

alias ninfo="sinfo -o $i_params"

# script to run srun with an interactive shell
alias interactive="bash ~/.interactive.sh"

# Python venv directory
function venv() {
	source ${HOME}/.venv/$1/bin/activate
}

