SYS=`uname -s`
SYS=`echo "$SYS" | awk '{print tolower($0)}'`

MEC=`uname -m`
MEC=`echo "$MEK" | awk '{print tolower($0)}'`

case $SYS in
  darwin)
    case $MEC in
      x86_64)
        precog ninja=macos "-oninja.$MEC"
      ;;
      arm64)
        precog ninja=macos "-oninja.$MEC"
      ;;
    esac
  ;;
  linux)
    case $MEC in
      x86_64)
        precog ninja=linux -oninja.x64
      ;;
      arm64)
        precog ninja=linux "-oninja.$MEC"
      ;;
    esac
  ;;
esac
