#! /bin/sh
GAMEDIR="$HOME/Games/Grand Theft Auto: Vice City"
GAMEBIN="gta-vc.exe"
EXECPATH="$(which wine)"
EXECTYPE="wine application"
if [ -d "$GAMEDIR" ] && [ -f "$GAMEDIR"/"$GAMEBIN" ] && [ -f "$EXECPATH" ]; then
    echo "Found game directory: $GAMEDIR"
    echo "Found launcher executable: $GAMEBIN"
    echo "Executing $EXECTYPE: $EXECPATH $GAMEBIN"
    cd "$GAMEDIR" && "$EXECPATH" "$GAMEBIN" &> /dev/null
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
