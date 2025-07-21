local SYS=`uname -s`
local SYS=`echo "$SYS" | awk '{print tolower($0)}'`
case $SYS in
  darwin)
    precog ninja -oninja.arm64
  ;;
  linux)
    precog ninja -oninja.arm64
  ;;
esac
