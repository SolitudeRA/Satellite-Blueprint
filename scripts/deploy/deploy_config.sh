#bin/bash

project_directory=$(
  cd "$(dirname "$0")" && cd ../.. || exit 1
  pwd
)

secrets_directory="${project_directory}/secrets"

function make_secret_directory() {

  if [ ! -d "${secrets_directory}" ]; then
    echo "Deploying secret files..."
    mkdir -p "${secrets_directory}"
  else
    echo "Refreshing secret files..."
    rm -r "${secrets_directory}"
    mkdir -p "${secrets_directory}"
  fi
}

function resolve_config_file() {
  mapfile -t config_name < <(jq -r 'keys[]' "${project_directory}/config.json")
  mapfile -t config_value < <(jq -r 'values[]' "${project_directory}/config.json")
  for i in {0..9}; do
    echo "${config_value[i]}" >"${secrets_directory}/${config_name[i]}"
  done
}

make_secret_directory

resolve_config_file
