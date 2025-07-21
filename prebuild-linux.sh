SYS=`uname -s`; SYS=`echo "$SYS" | awk '{print tolower($0)}'`
MEC=`uname -m`; MEC=`echo "$MEC" | awk '{print tolower($0)}'`

main(){
  echo "Detected \"$MEC\" for \"$SYS\""
  case $SYS in
    darwin)
      case $MEC in
        x86_64) # Apple Intel Crapola.c
          precog ninja=macos "-oninja.x64"
          return
        ;;
        arm64) # Apple Silicon
          precog ninja=macos "-oninja.$MEC"
          return
        ;;
      esac
      echo "  Uname pipe borked!"
    ;;
    linux)
      case $MEC in
        x86_64) # Intel wicked slow garbage.
          precog ninja=linux -oninja.x64
          return
        ;;
        aarch64|arm64) # Arm64 but not Apple Silicon
          precog ninja=linux "-oninja.$MEC"
          return
        ;;
      esac
      echo "  Uname pipe borked!"
    ;;
  esac
}

main $@
