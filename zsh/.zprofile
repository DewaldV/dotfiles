
export SSH_KEY_PATH="~/.ssh/id_rsa"
export DEFAULT_USER=dewaldv
export PATH=/usr/local/sbin:${PATH}
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

#Ruby
RBENV_HOME="${HOME}/.rbenv"

if [ -d "${RBENV_HOME}" ]; then
    if which rbenv &> /dev/null; then eval "$(rbenv init -)"; fi
fi

# Python
PYENV_HOME="${HOME}/.pyenv"

if [ -d "${PYENV_HOME}" ]; then
    if which pyenv &> /dev/null; then eval "$(pyenv init -)"; fi
fi

# NodeJS
NODENV_HOME="${HOME}/.nodenv"

if [ -d "${NODENV_HOME}" ]; then
    if which NODENV &> /dev/null; then eval "$(nodenv init -)"; fi
fi

# Golang
if which go &> /dev/null; then
    export GOPATH="${HOME}/Dev/go"
fi

# Java

if [ "$(uname)" = "Darwin" ]; then
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.jdk/Contents/Home
fi

if [ "$(uname)" = "Linux" ]; then
    export JAVA_HOME=/usr/lib/jvm/java
fi

# Maven
MAVEN_DIR='/usr/share/maven'
if [ -d ${MAVEN_DIR} ]; then
    export M3=${MAVEN_DIR}
    export M3_HOME=${M3}
    export MAVEN_OPTS='-Xms256m -Xmx512m'
fi
