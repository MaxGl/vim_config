#!/bin/sh

find_in_dir() {
  local dir=`readlink -f "$1"`
	local extensions="$2"
	local quote="$3"
	local params=""

  for ext in $extensions; do
		[ -n "$params" ] && params="$params -o"
		params="$params -name *$ext"
  done

	set -f
	if [ "y" = "$quote" ]; then
		find "$dir" \( -not -type l \) -and \( $params \) -printf '"%p"\n'
	else
		find "$dir" \( -not -type l \) -and \( $params \)
	fi
	set +f
}

find_extensions() {
  local extensions='.c .cpp .h .cxx .cc'
	local quote="$1"
	shift
  local dirs=$@

  for dir in $dirs; do
    find_in_dir "$dir" "$extensions" "$quote"
  done
}

# Start
if [ -z "$1" ]; then
  # assume current dir
  params=.
else
  params="$@"
	for dir in $params; do
		if [ ! -d "$dir" ]; then
			echo "ERROR: $dir does not appear to be a directory. Exiting..."
			exit 1
		fi
	done
fi

start_time=`date +%s`
list_start_time=$start_time
echo -n "Preparing file list..."
find_extensions "n" "$params" > ctags.file.list
find_extensions "y" "$params" > cscope.file.list
list_time_took=$((`date +%s` - list_start_time))
echo "done (in $list_time_took sec)"

echo " CTAGS in $params"
ctags -R --file-tags=yes -Lctags.file.list &
echo " CSCOPE in $params"
cscope -Rb -icscope.file.list &
wait

## Commenting this out since Valloric claims they fixed it
# cp -f /home/max/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py .

end_time=`date +%s`
echo "DONE"
time_took=$((end_time - start_time))
echo "Time took: $time_took sec"
rm ctags.file.list
rm cscope.file.list
