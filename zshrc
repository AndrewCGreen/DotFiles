# export PATH=$HOME/bin:/usr/local/bin:$PATH

#: Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#Andaconda
#export PATH="$HOME/anaconda3/bin:$PATH"  # commented out by conda initialize

export MMPATH="$HOME/Workspace/march-madness"
export LDPATH="$HOME/Workspace/LD"
export TIPATH="$HOME/Workspace/titanic"
export LAWPATH="$HOME/Workspace/law-search"
export GTAPATH="$HOME/Workspace/pygta"

ZSH_THEME="robbyrussell"

#Function to help synchronize git
function synchronize() {
	git checkout master
	git pull --rebase
	git checkout -
	git merge --no-ff master
	git push
}

function mac-update(){
    echo conda update --all
    conda update --all
    echo brew update
    brew update
    echo brew upgrade
    brew upgrade
    echo brew cask upgrade 
    brew cask upgrade --greedy
}

ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  python
  golang
  osx
  aws
  brew
  jsontools 
)


#alias
alias jn="jupyter notebook"
alias pt="python photo-transfer-mac.py"
alias rpi="ssh pi@ BLAH BLAH 212"


source $ZSH/oh-my-zsh.sh
