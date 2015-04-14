#!/bin/bash

BUILDS=(latest)

buildVersion() {
  pushd $1
  bash build.sh
  popd
}

build() {
  runCmd buildVersion "${BUILDS[@]}"
}

main() {
  if [ -e lib ]; then
    pushd lib
    git reset --hard HEAD
    git pull
    popd
  else
    git clone git@github.com:Amuxbit/container-automation-lib.git lib
  fi

  source lib/core.sh

  local commands=(setTrap info build)
  run "${commands[@]}"
  catch
}

main
