#bin/bash

project_directory=$(
  cd "$(dirname "$0")" && cd ../.. || exit 1
  pwd
)

secrets_directory="${project_directory}/secrets"

function make_secret_directory() {

  if [ ! -d "${secrets_directory}" ]; then
    mkdir -p "${secrets_directory}"
  fi

  rm "${secrets_directory}"/*
}

function resolve_config_file() {
  local config_file="$1"
  local space='[[:space:]]*' word='[a-zA-Z0-9_.-]*' fs="$(echo @ | tr @ '\034')"
  (
    sed -e '/- [^\“]'"[^\']"'.*: /s|\([ ]*\)- \([[:space:]]*\)|\1-\'$'\n''  \1\2|g' |
      sed -ne '/^--/s|--||g; s|\"|\\\"|g; s/[[:space:]]*$//g;' \
        -e 's/\$/\\\$/g' \
        -e "/#.*[\"\']/!s| #.*||g; /^#/s|#.*||g;" \
        -e "s|^\(${space}\)\(${word}\)${space}:${space}\"\(.*\)\"${space}\$|\1${fs}\2${fs}\3|p" \
        -e "s|^\(${space}\)\(${word}\)${space}[:-]${space}\(.*\)${space}\$|\1${fs}\2${fs}\3|p" |
      awk -F "${fs}" '{
              indent = length($1)/2;
              if (length($2) == 0) { conj[indent]="+";} else {conj[indent]="";}
              vname[indent] = $2;
              for (i in vname) {if (i > indent) {delete vname[i]}}
                  if (length($3) > 0) {
                      vn=""; for (i=0; i<indent; i++) {vn=(vn)(vname[i])("_")}
                      printf("%s%s%s%s=(\"%s\")\n", vn, $2, conj[indent-1], $3);
                  }
              }' |
      sed -e 's/_=/+=/g' |
      awk 'BEGIN {
                  FS="=";
                  OFS="="
              }
              /(-|\.).*=/ {
                  gsub("-|\\.", "_", $1)
              }
              { print }'
  ) <"${config_file}"
}

function deploy_sensitive_config() {
  local config_file="$1"
  make_secret_directory
  resolve_config_file "${config_file}"
}

if [ "x" != "x${1}" ] && [ "x--debug" != "x${1}" ]; then
  deploy_sensitive_config "${1}"
fi
