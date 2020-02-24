#!/bin/bash


function usage {
    echo -e "Usage:\t $0 [-k /path/kubeconfig -c context] -n namespace -a application -i image"
    echo -e "  -c \t Hugo configuration file to use."
    echo -e "  -h \t Display this help message."
}

function hugo_build {
    local conf="$1"

    GR='\033[0;32m'
    NC='\033[0m' # No Color
    echo -e "${GR}Building site from $conf file ${NC}"

    hugo --debug --verbose --config $conf 
}

while getopts ":hc:" opt; do
  case ${opt} in
    h )
      usage
      exit 0
      ;;
    c )
      CONF_FILE=$OPTARG
      ;;
    \? )
      echo "Invalid Option: -$OPTARG" 1>&2
      exit 1
      ;;
    : )
      echo "Invalid option: $OPTARG requires an argument" 1>&2
      ;;
  esac
done
shift $((OPTIND -1))

# run from the root of the repo
pushd . &> /dev/null
cd "$(dirname $0)/.."

if [ -z "$CONF_FILE" ]; then
   for file in $(find ./config -type f -name 'v*.toml' -o -name "v*.yaml" | sort); do
       hugo_build $file
   done
else
    hugo_build $CONF_FILE
fi

popd &> /dev/null
