echo
echo "*****************************************************"
echo "Welcome to the docker-python-mysql setup"
echo 

rm -rf .env
touch .env

read -p "Enter your MySQL root password : " mysql_root_password

echo "MYSQL_ROOT_PASSWORD=$mysql_root_password" >> .env

read -p "Enter MySQL access port : " mysql_access_port

echo "MYSQL_ACCESS_PORT=$mysql_access_port" >> .env

read -p "Enter adminer access port : " adminer_port

echo "ADMINER_PORT=$adminer_port" >> .env

echo "RESTART=always" >> .env

echo "*****************************************************"

#docker-compose up -d
