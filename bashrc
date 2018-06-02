# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

export JAVA_HOME="/usr/java/jdk1.8.0_45/"
export MVN_HOME="/opt/mvn/apache-maven-3.3.9/"

# User specific aliases and functions
export LS_COLORS='di=36'
export BOOST_BUILD_PATH='/usr/local/boost-build'
export PATH=$MVN_HOME/bin:$PATH
export PERL5LIB=/home/rohsmi/bin/git-1.7.9.2/perl

parse_git_branch () {
	# git name-rev HEAD 2> /dev/null | sed 's#HEAD\ \(.*\)# (git::\1)#'
	git rev-parse --abbrev-ref HEAD 2> /dev/null | sed 's#\(.*\)# (git::\1)#'
}

parse_svn_branch() {
	parse_svn_url | sed -e 's#^'"$(parse_svn_repository_root)"'##g' | awk '{print " (svn::"$1")" }'
}

parse_svn_url() {
	svn info 2>/dev/null | sed -ne 's#^URL: ##p'
}
parse_svn_repository_root() {
	svn info 2>/dev/null | sed -ne 's#^Repository Root: ##p'
}

BLACK="\[\033[0;38m\]"
RED="\[\033[0;31m\]"
RED_BOLD="\[\033[01;31m\]"
BLUE="\[\033[01;34m\]"
GREEN="\[\033[0;32m\]"

export PS1="$BLACK[ \u@$RED\h $GREEN\w$RED_BOLD\$(parse_git_branch)\$(parse_svn_branch)$BLACK ] "

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

export SVN_EDITOR=vim

if [ -f ~/.git-completion ]; then
  . ~/.git-completion
fi
