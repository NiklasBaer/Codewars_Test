#!/bin/bash

SCRIPT_DIRECTORY="$(dirname -- "$(readlink -f -- "${BASH_SOURCE[0]}")")"
cd "${SCRIPT_DIRECTORY}" || exit

# run the latest composer 2.2 LTS version in docker
docker run \
  --interactive \
  --name 'codewars-php70' \
  --rm \
  --tty \
  --user "$(id -u)":"$(id -g)" \
  --volume "${PWD}":/app \
  andrerademacher/codewars-php70 "$@"
