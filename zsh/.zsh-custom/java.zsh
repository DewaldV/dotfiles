## Java

if [ "$(uname)" = "Darwin" ]; then
  export JAVA_HOME=/Library/Java/Home
fi

if [ "$(uname)" = "Linux" ]; then
  export JAVA_HOME=/usr/lib/jvm/java
fi

## Maven
MAVEN_DIR='/usr/share/maven'
if [ -d ${MAVEN_DIR} ]; then
  export M3=${MAVEN_DIR}
  export M3_HOME=${M3}
  export MAVEN_OPTS='-Xms256m -Xmx512m'
fi
