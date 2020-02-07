# export PATH=$HOME/bin:/usr/local/bin:$PATH

#: Path to your oh-my-zsh installation.
export ZSH="/Users/andrewgreen/.oh-my-zsh"

#Andaconda
export PATH="/Users/andrewgreen/anaconda3/bin:$PATH"

#SF URL and TOKEN, not sure how this is different than the Floret tbh
export SF_QUERY_URL="https://query.signalframe.com/"
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

# identify your cluster ID
export USER_CLUSTER_ID="j-TWJAZGKL0FZ6" # for example, j-IHX5U8CJ0E02
export ANDREW_CLUSTER="j-399B17SFE54K5"
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

#create virtual environment for datasci
function datasci-activate() {
  source $WRPATH/datasci/scripts/datasci_env/bin/activate
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
