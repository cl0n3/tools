# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

export JAVA_HOME="/usr/java/jdk1.8.0_45/"
export MVN_HOME="/opt/mvn/apache-maven-3.3.9/"

export PATH=$MVN_HOME/bin:$PATH
