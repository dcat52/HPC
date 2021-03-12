if [[ -d "~/.opt" ]]; then
    mkdir ~/.opt
fi

sys_files=(~/.bashrc ~/.bash_aliases ~/.opt/interactive.sh)

for FILE in "${sys_files[@]}"
do
    echo "Working on $FILE"
    if [[ -f "$FILE" && ! -L "$FILE" ]]; then
        echo "Moving file to .backup"
        mv $FILE $FILE.backup
    elif [[ -L "$FILE" ]]; then
        echo "Deleting link"
        rm $FILE
    fi

    BASE=`basename $FILE`

    if [[ ${BASE} = .bash* ]]; then
        BASE=${BASE//.}
    fi

    echo "Linking to ./$BASE"

    ln -s $PWD/$BASE $FILE

    echo ""

done

echo "Exiting!"
