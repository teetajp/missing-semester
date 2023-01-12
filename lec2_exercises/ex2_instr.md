Since shell processes are given the current environment (variables) when they are started
and they have no access to the parent process's environment. Changes made by the shell process are lost when the process is terminated.
One way to make changes to the environment persist is to source a script file,
which is running the contents of a script using our current (parent) shell.

So running `./marco.sh` will only save the working directory to $cwd within the marco.sh process,
but $cwd will still be null in the parent process.

To save changes to $cwd to the current shell, type `source marco.sh` to run the contents of marco.sh in the current shell.
