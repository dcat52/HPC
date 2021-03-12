# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# ===========================================
# ===========================================
# ===========================================
# ============ CUSTOM ADDITIONS: ============
# ===========================================
# ===========================================

source ~/.bash_aliases > /dev/null

eval `ssh-agent` > /dev/null
ssh-add ~/.ssh/github.pem > /dev/null

if [[ $(hostname -s) = compute* ]]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi

if [[ $(hostname -s) = turing* ]]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    module load slurm
    module load singularity
    module load parallel
fi

if [[ $(hostname -s) = ace* ]]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    module load tmux
    module load nano
    module load slurm
    module load singularity

    module load cuda90/toolkit/9.0.176
    module load cudnn/7.1
fi




# if [ "$HOSTNAME" = "ace-login-03" ] || [ "$HOSTNAME" = "ace-login-02" ] || [ "$HOSTNAME" = "ace-login-01" ]; then
# 	source ~/.bash_modules
# fi

# export PATH=${HOME}/.opt/python-3.6.7/bin:$PATH
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${HOME}/.opt/python-3.6.7/lib

# export GUROBI_HOME="/home/dscatherman/gurobi/gurobi902/linux64" 
# export PYTHONPATH="${PYTHONPATH}:${GUROBI_HOME}/bin"
# export PATH="${PATH}:${GUROBI_HOME}/lib" 
# export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${GUROBI_HOME}/lib" 
# export GRB_LICENSE_FILE="/home/dscatherman/gurobi.lic"

# export PATH="/home/dscatherman/.opt/openssl/bin/:${PATH}"

# export PATH="/home/dscatherman/.opt/openssl/lib/:${PATH}"

# export LDFLAGS="-L/home/dscatherman/.opt/openssl/lib"
# export CPPFLAGS="-I/home/dscatherman/.opt/openssl/include"

# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${HOME}/.opt/openssl/lib
