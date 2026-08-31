#!/bin/sh
# Bootstrap-friendly Gradle wrapper launcher for this prototype bundle.
# If the standard wrapper JAR is absent, fetch the official Gradle wrapper JAR once.
APP_HOME=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
JAR="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"
if [ ! -f "$JAR" ]; then
  echo "Gradle wrapper JAR missing; downloading official Gradle 9.5.1 wrapper..." >&2
  mkdir -p "$(dirname "$JAR")"
  if command -v curl >/dev/null 2>&1; then
    curl -fL "https://services.gradle.org/distributions/gradle-9.5.1-wrapper.jar" -o "$JAR" || exit 1
  elif command -v wget >/dev/null 2>&1; then
    wget -O "$JAR" "https://services.gradle.org/distributions/gradle-9.5.1-wrapper.jar" || exit 1
  else
    echo "Install curl/wget or let Android Studio configure Gradle." >&2
    exit 1
  fi
fi
exec java -classpath "$JAR" org.gradle.wrapper.GradleWrapperMain "$@"
