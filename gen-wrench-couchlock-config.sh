#!/bin/bash
for project in "wrench" "couchlock"; do
    LATEST_RELEASE="$(curl -L -s -H 'Accept: application/json' https://github.com/tomologic/${project}/releases/latest)"
    LATEST_VERSION="$(echo "$LATEST_RELEASE" | sed -e 's/.*"tag_name":"v\([^"]*\)".*/\1/')"
    DARWIN_BIN_URL="https://github.com/tomologic/${project}/releases/download/v${LATEST_VERSION}/${project}-${LATEST_VERSION}-darwin-amd64"
    LINUX_BIN_URL="https://github.com/tomologic/${project}/releases/download/v${LATEST_VERSION}/${project}-${LATEST_VERSION}-linux-amd64"
    DARWIN_SHA="$(curl -Ls "${DARWIN_BIN_URL}" | shasum -a 256 | cut -d' ' -f1)"
    LINUX_SHA="$(curl -Ls "${LINUX_BIN_URL}" | shasum -a 256 | cut -d' ' -f1)"
    cat << EOF

  homepage 'https://github.com/tomologic/${project}'
  head 'git@github.com:tomologic/${project}.git'
  version '${LATEST_VERSION}'

  if OS.mac?
    os = 'darwin'
    sha256 '${DARWIN_SHA}'
  elsif OS.linux?
    os = 'linux'
    sha256 '${LINUX_SHA}'
  end

EOF
done
