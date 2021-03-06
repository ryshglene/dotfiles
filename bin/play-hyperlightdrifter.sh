#! /bin/sh
GAMEDIR="$HOME/Games/Hyper Light Drifter"
GAMEBIN="start.sh"
EXECPATH="$(which sh)"
EXECTYPE="shell script"
if [ -d "$GAMEDIR" ] && [ -f "$GAMEDIR"/"$GAMEBIN" ] && [ -f "$EXECPATH" ]; then
    echo "Found game directory: $GAMEDIR"
    echo "Found launcher executable: $GAMEBIN"
    echo "Executing $EXECTYPE: LD_PRELOAD=libcurl.so.3 $EXECPATH $GAMEBIN"
    cd "$GAMEDIR" && LD_PRELOAD=libcurl.so.3 "$EXECPATH" "$GAMEBIN" &> /dev/null
else
    if [ ! -d "$GAMEDIR" ]; then
        echo "Directory: $GAMEDIR Is missing"
    fi
    if [ ! -f "$GAMEDIR"/"$GAMEBIN" ]; then
        echo "File: $GAMEBIN Is missing"
    fi
    if [ ! -f "$EXECPATH" ]; then
        echo "File: $EXECPATH Is missing"
    fi
fi
