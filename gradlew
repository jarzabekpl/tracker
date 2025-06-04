#!/usr/bin/env sh

# ------------------------------------------------------------------------------
#  Gradle start up script for UN*X
# ------------------------------------------------------------------------------

# Set default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# Use the maximum available, or set MAX_FD != -1 to use that value.
MAX_FD="maximum"

warn() {
    echo "$*"
}

die() {
    echo
    echo "$*"
    echo
    exit 1
}

# Attempt to set JAVA_HOME if it's not set
if [ -z "$JAVA_HOME" ]; then
    if [ -x /usr/libexec/java_home ]; then
        export JAVA_HOME=`/usr/libexec/java_home`
    fi
fi

# OS specific support
cygwin=false
msys=false
darwin=false
case "`uname`" in
    CYGWIN* )
        cygwin=true
        ;;
    MINGW* )
        msys=true
        ;;
    Darwin* )
        darwin=true
        ;;
esac

# Resolve links: $0 may be a softlink
PRG="$0"
while [ -h "$PRG" ]; do
    ls=`ls -ld "$PRG"`
    link=`expr "$ls" : '.*-> \(.*\)$'`
    if expr "$link" : '/.*' > /dev/null; then
        PRG="$link"
    else
        PRG="`dirname "$PRG"`/$link"
    fi
done

SAVED="`pwd`"
cd "`dirname "$PRG"`/" >&-
APP_HOME="`pwd -P`"
cd "$SAVED" >&-

# Locate the JAR file
GRADLE_JAR="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"

# Check that the gradle-wrapper.jar exists
if [ ! -f "$GRADLE_JAR" ]; then
    die "The Gradle wrapper jar was not found at $GRADLE_JAR"
fi

# Launch Gradle
exec "$JAVA_HOME/bin/java" $DEFAULT_JVM_OPTS -jar "$GRADLE_JAR" "$@"
