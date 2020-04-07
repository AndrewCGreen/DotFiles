# export PATH=$HOME/bin:/usr/local/bin:$PATH

#: Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#Andaconda
export PATH="$HOME/anaconda3/bin:$PATH"  # commented out by conda initialize

export MMPATH="$HOME/Workspace/march-madness"
export LDPATH="$HOME/Workspace/LD"
export TIPATH="$HOME/Workspace/titanic"


#Go
export WRPATH="$HOME/Workspace/signal-graph"
export GOPATH="$HOME/Workspace/signal-graph/backend"
export PATH="$HOME/go/bin:$PATH"

# path to your local Apache Spark instance
export SPARK_HOME="/usr/local/Cellar/apache-spark/2.4.0/libexec"

# path to java instance 
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# enable Spark tools
export PATH="$SPARK_HOME/bin:$PATH"

# set our datasci Python interpreter to act as Spark's
export PYSPARK_PYTHON="$WRPATH/datasci/scripts/datasci_env/bin/python"

# point to your EMR job path
export USER_BUCKET="s3://wirelessregistry-emr-jobs/andrew/"

# enable the datasci.sh tool
export PATH="$WRPATH/datasci/scripts:$PATH"

export SOLENGPATH="$HOME/Workspace/solutions-engineering"

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

#create virtual environment for datasci
function datasci-activate() {
# source $WRPATH/datasci/scripts/datasci_env/bin/activate  # commented out by conda initialize
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
  go
  osx
  aws
  brew
  jsontools 
)


#alias
alias jn="jupyter notebook"

source $ZSH/oh-my-zsh.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/andrewgreen/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/andrewgreen/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/andrewgreen/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/andrewgreen/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

