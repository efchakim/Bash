#Input path, print a long list of folders and files program thru the use of ls -l command

#variables
ans="yes"

#print instructions
echo -e "\nWelcome, this program will list all the files and folders in a given path" 
echo -e
echo -e "Please keep in mind:"
echo -e "-Linux paths are cap sensitive."
echo -e "-This script routes folders, do not include a file in the path."
echo -e
echo -n "Example path: " 
eval echo "~$different_user" 

#add multiple paths
while [ $ans == "yes" ]; 
do
	echo -e
	read -p "Enter your path: " path
  echo -e $path
  if [ -d "$path" ]; then
    import_command="ls -l $path | grep e"
    echo -e "Files in path $path are:  \n" 
    bash -c "$import_command"
    echo -e
    echo -e "The list of files and folders have finshed printing, "
  else
     echo -e "This path in invaid"
  fi
      read -p "Would you like to view another yes/no " ans
  done
  
