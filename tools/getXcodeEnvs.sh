. `dirname $0`/envs.sh

if [ $# -lt 1 ]; then
  echo "usage: $0 env_name"
  exit 0
fi

xcodebuild \
  -showBuildSettings \
  -project ${PROJECT} \
  -scheme ${SCHEME} \
| grep " $1 = " | awk -F " = " '{ print $2 }'

#declare -A XCODE_ENVS
#xcodebuild \
#  -showBuildSettings \
#  -project ${PROJECT} \
#  -scheme ${SCHEME} | while read line
#do
#  set -- `echo ${line} | awk -F " = " '{ printf "%s %s", $1, $2 }'`
#  if [ "$1" != "" -a "$2" != "" ]; then
#    
#  fi
#done

