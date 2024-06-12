#!/bin/bash

# Variables
read -p "Enter your image_name: " DB_NAME
#DB_NAME="your_db_name"
DB_USER="sasender"
DB_PASSWORD="Sasender@96"
#DUMP_FILE="your_dump_file.sql"
read -p "Enter your dumplefile": DUMP_FILE

# Check if the database exists
DB_EXISTS=$(mysql -u$DB_USER -p$DB_PASSWORD -e "SHOW DATABASES LIKE '$DB_NAME';" | grep "$DB_NAME" > /dev/null; echo "$?")

# If the database does not exist, create it
if [ $DB_EXISTS -ne 0 ]; then
  echo "Database $DB_NAME does not exist. Creating..."
  mysql -u$DB_USER -p$DB_PASSWORD -e "CREATE DATABASE $DB_NAME;"
  echo "Database $DB_NAME created."
else
  echo "Database $DB_NAME already exists."
fi

# Dump the database
echo "Dumping database $DB_NAME to $DUMP_FILE..."
mysqldump -u$DB_USER -p$DB_PASSWORD $DB_NAME > $DUMP_FILE
echo "Database dump completed."
