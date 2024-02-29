<details>
<summary>What is Kernel?</summary><br><b>
Kernel is a computer program which is like a core of computer's operating system,with control over everything in the system
</b></details>

<details>
<summary>What is shell script?</summary><br><b>
  
In a simplest term, a shell is a file containing series of commands. The shell reads this file and carries out the commands as though they have been entered directly on the command line<br>
It has a extension of *`.sh`*
</b></details>

<details>
<summary>How to give exceute permission to script file name?</summary><br><b>
  
There are two ways for this: <br>
  1.  `chmod +x <script_file_name>`
  2.  `chmod 755 <script_file_name>`
</b></details>

<details>
<summary>How to execute the script files?</summary><br><b>
  
There are three ways for this: <br>
  1. ./script_file_name
  2. sh script_file_name
  3. bash script_file_name
</b></details>

<details>
<summary>What does "#!/bin/bash represents?</summary><br><b>
  
This is called a shebang. It is nothing but absolute path to the Bash interpreter. It is followed by #!, followed by the full path to the interprter such as /bin/bash.
If one does not specify the interpreter line, the default path is /bin/sh
</b></details>

<details>
<summary>If one has declared the variable how can one it's value?</summary><br><b>
  
The user use can value of variable by using "$" sign. Make sure there is not space between variable_name and its value.
And always remember variables are case sensitive<br>

```console
name="Abhishek"
age=23
echo "My name is $name and I am $age  years old"
```
```console
ubuntu@ip-172-31-91-52:~/scripts$ bash abhi.sh
My name is Abhishek and I am 23  years old.
```
</b></details>

<details>
<summary>What are comments? And how can you define them.</summary><br><b>
  
Comments are the part of the code that will be ignored by the program interpreter.<br>

``` console
#!/bin/bash
#This is a singel line comment
echo "This will ignore above line"

<< task
This is multi-line comment
It can ignore multiple line
task
echo "This line will be printed by ignoring above commented lines"

```
</b></details>

<details>
<summary>Explain command line arguements?</summary><br><b>
  
During  shell script exceution, values passing through command prompt is called as command line arguements.
For eg: bash file.sh arg1 arg2 arg3

```console
#!/bin/bash
echo "$#" #---> This represents the number of arguements passed
echo "$@" #---> Display all the arguements on the command line
echo "$3" #---> Display the 3rd arguements on the command line
echo "$*" #---> Display all the arguements on the command line
echo "$$" #---> Gives the unique id to the process running.
```

```console
ubuntu@ip-172-31-91-52:~/scripts$ ./abhi.sh java jenkins linux docker
4
java jenkins linux docker
linux
java jenkins linux docker
1921
```

</b></details>

<details>
<summary>Difference between '$*' and '$@'</summary><br><b>

$@---> The collection of arguemenst in this is treated as seperate string.<br>
$*---> The collection of arguements in this is treated as one text string.<br>

```hcl
./script.sh arg1 arg2 "arg3 with spaces"

# using $@
arg1
arg2
arg3 with spaces
# using $*
arg1 arg2 arg3 with spaces
```
</b></details>

<details>
<summary>Explain what is read command</summary><br><b>
  
In shell scripting we use *read* command to take input from the user. This helps to make the script interactive.
</b></details>

<details>
<summary>Give if-else synatx. With its option flag</summary><br><b>

```
if [ expression1 ]
then
   statement1
   statement2
   .
   .
elif [ expression2 ]
then
   statement3
   statement4
   .
   .
else
   statement5
fi
```
Options flags

`-f filename`: True if filename exists and is a regular file<br>
`-d directory`: True if the directory exists and is a directory<br>
`-e filename`: True if filename exists(regardless of the type)<br>
`-s filename`: True if the file exists and has a size greater than zero<br>
`-z filename`: True if the length of the string is zero<br>
`-n string`: True if the lenght of the string is non-zero<br>
`string1 = string2`: True if string1 is equal to string2<br>
`string1 != string2`: True if string1 is not equal to string2<br>
`int1 -eq int2`: True if int1 is equal to int2<br>
`int1 -ne int2` : True if int1 is not equal to int2<br>
`int1 -lt int2`: True if int1 is less than int2<br>
`int1 -gt int2`: True if int1 is greater than int2<br>
`int1 -ge int2`: True if int1 is greater than or equal to int2<br>
`int1 -le int2`: True if int1 is less than or equal to int2<br>
`-r filename`: True if the file is readable<br>
`-w filename`: True is the file is writable<br>
`-x filename`: True if the file is executable<br>

</b></details>

<details>
<summary>Give the syntax of for statement.</summary><b><br>

```
#Syantax for using in the loop
for varname in list
do
  echo "statement"
done
```

```
#cond1 means initialization, cond2 means condition, cond3 means updation
for ((cond1; cond2; cond3))
do
  echo "statement"
done
```

```
# To print table of 2
for table in {3..30..3}
do
  echo $table
done
```
</b>
</details>

<details>
<summary>True or False? When a certain command/line fails in a shell script, the shell script, by default, will exit and stop running</summary><b><br>

Depends on the language and settings used. If the script is a bash script then this statement is true. When a script written in Bash fails to run a certain command it will keep running and will execute all other commands mentioned after the command which failed.<br>

Most of the time we might actually want the opposite to happen. In order to make Bash exist when a specific command fails, use 'set -e' in your script.
</b>
</details>

<details>
<summary>What do you tend to include in every script you write?</summary><b><br>

1. Comments on how to run it and/or what it does<br>
2. If a shell script, adding "set -e" since I want the script to exit if a certain command failed
</b>
</details>

<details>
<summary>How to perform arithmetic operations on numbers?</summary><b><br>

$(( 1 + 2 ))
</b>
</details>

<details>
<summary>What are system defined variables in bash?</summary><b><br>

Created and maintained by Linux bash iteself. This type of variables are defined in capital letters.<br>
There are many shell inbuilt variables which are used for administration and writing shell scripts.<br>
We can see all system variables with the help og `env` command.

```hcl
$HOME-------> Represents the current user's home directory
$PWD--------> Represents the present working directory
$USER-------> Represents the username of the current user
$PATH-------> Specifies the colon-separated list of directories in which the shell looks for executables files
$SHELL------> Represents the path of current shell
$RANDOM-----> Generates a random integer between 0 and 32767
$HOSTNAME---> Represents the hostname of the machine
$UID--------> Represents the user ID of the current user
```
</b>
</details>

<details>
<summary>What are the wildcards in bash?</summary><b><br>

Wildcards are special characters used to perform pattern matching when working with files.<br>
1. `ls *.txt` ---> This commands lists all files in current directory
2. `ls file?.txt` ---> This commands list file1.txt, fileA.txt but not file12.txt
3. `ls file[1-3-.txt` ---> This commands list file1,file2 and file3 not file4
4. `mv file{1,2,3}.txt directory/ ---> This commands move file1,file2 and file3 to the directory.
</b>
</details>
