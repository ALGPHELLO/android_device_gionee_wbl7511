echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic frameworks/av frameworks/native system/core system/netd"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/gionee/wbl7511/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
