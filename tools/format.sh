SOURCE_FOLDERS="src/"

find ${SOURCE_FOLDERS} -iname *.h -o -iname *.cpp | xargs clang-format --style=file -i
