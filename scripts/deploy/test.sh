project_directory=$(cd "$(dirname "$0")" && cd ../.. || exit 1;pwd)

if [ -d "${project_directory}/secrets" ];then
      echo "done"
fi