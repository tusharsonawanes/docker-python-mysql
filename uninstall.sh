rm -rf mysql/mysql-data/*

rm -rf .env

docker-compose down --remove-orphans
