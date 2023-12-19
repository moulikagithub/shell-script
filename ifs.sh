file=/etc/passwd
r="\e[31m"
g="\e[32m"
n="\e[0m"
 if [ ! -d $file ]
 then
     echo -e "$r $file directory not found $n"
fi
while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path
do
  echo "username:$username" 
  echo "user_id:$user_id"
  echo "user group:$group_id"
done < $file