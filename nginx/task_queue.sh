for file in /workspace/task_queue/*
do
    if test -f $file
    then
		chmod +x $file
		$file
		rm $file
    fi
done