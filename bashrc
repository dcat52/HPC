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

# add each bash alias
source ~/.bash_aliases

# add each ssh key
eval `ssh-agent` > /dev/null
ssh-add ~/.ssh/github.pem 2> /dev/null

if [[ $(hostname -s) = turing* ]]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    module load slurm
    module load singularity
fi

if [[ $(hostname -s) = compute* ]]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi

if [[ $(hostname -s) = gpu* ]]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi

export MANPATH=$MANPATH:$HOME/.opt/share/man
export PATH=$PATH:$HOME/.opt/bin

export PATH=$HOME/apptainer-definitions/bin:$PATH
export PATH=$PATH:$HOME/.local/bin
