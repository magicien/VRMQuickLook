if [ $# -lt 1 ]; then
  echo "usage: $0 tag_name"
  exit 0
fi

. `dirname $0`/envs.sh

TAG="$1"
GET_ENV="${TOOLS_DIR}/getXcodeEnvs.sh"
BUILT_PRODUCTS_DIR=`${GET_ENV} BUILT_PRODUCTS_DIR`
PRODUCT_PATH="${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}"
LOCAL_BUILD_DIR="${ROOT_DIR}/build/"
TAG_DIR="${LOCAL_BUILD_DIR}/${SCHEME}_${TAG}"
ZIP_NAME="${SCHEME}_${TAG}.zip"

xcodebuild \
  -project ${PROJECT} \
  -scheme ${SCHEME} \
  -configuration ${CONFIGURATION}

rm ${LOCAL_BUILD_DIR}/${ZIP_FILE}
rm -r ${TAG_DIR}
mkdir ${TAG_DIR}

cp -a ${PRODUCT_PATH} ${TAG_DIR}/
cd ${LOCAL_BUILD_DIR}
zip ${ZIP_NAME} --symlinks -r ${SCHEME}_${TAG}/*

