typeset -U path

export SSH_KEY_PATH="~/.ssh/id_rsa"
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/keyring/ssh"
#export DEFAULT_USER=dewald.viljoen
path=('/usr/local/sbin' $path)
path+=("${HOME}/bin")
#path+=("${HOME}/.local/bin")

#asdf
ASDF_HOME="${HOME}/.asdf"
if [ -f "${ASDF_HOME}/asdf.sh" ]; then
    . "${ASDF_HOME}/asdf.sh"
fi

# Golang
if which go &> /dev/null; then
    export GOPATH="${HOME}/.go"
    path+=("${GOPATH}/bin")
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
