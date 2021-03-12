sys_files=(~/.bashrc ~/.bash_aliases)

for FILE in "${sys_files[@]}"
do
    echo "Working on $FILE"
    if [ -f "$FILE" ]; then
        mv $FILE $FILE.backup
    fi

    BASE=`basename $FILE`
    BASE=${BASE//.}

    ln -s $PWD/$BASE $FILE

done

echo "Exiting!"
