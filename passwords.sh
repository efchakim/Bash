#! /bin/bash
failures="signin_failures.txt"
signedin="signedin.txt"
passwords="passwords.txt"
num=0
limit=2
while (( "$num" < $limit )); 
do
  echo -e ""
  echo -e "" 
  echo -e "Sign-in:"
  read -p "User: " user
  read -p "Password: " password
	d=$(date +%Y-%m-%d)
	if grep -q $user "$passwords" && grep -q $password "$passwords"; then
      echo -e "You are signed in!"
      echo -e " $user $password  $d" >> $signedin 
      exit
  else 
    num=$((num+1))
    # $ wc -l file
	  echo -e "[" $user","  $password"," $d "]" >> $failures 
    printf "No Match"
  fi
done
echo -e ", You have passed the limit of signin attempts, create a account" 
  echo -e ""
  echo -e "Enter the following information:"
  read -p "First name: " first
  read -p "Last name: " last
  read -p "Username: " username
  read -p "Password: " pass
  echo -e  $username, $pass, $d >> $passwords

num=$((num-$limit))
