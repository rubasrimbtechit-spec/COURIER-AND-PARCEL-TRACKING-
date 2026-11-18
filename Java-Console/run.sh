#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
export DB_URL="${DB_URL:-jdbc:mysql://localhost:3306/courier_tracking?useSSL=false&serverTimezone=UTC}"
read -r -p "MySQL username (usually root): " DB_USER
export DB_USER
read -r -s -p "MySQL password: " DB_PASSWORD
printf '\n'
export DB_PASSWORD
if [[ ! -f target/courier-parcel-tracking-1.0.0.jar ]]; then
  mvn clean package
fi
java -jar target/courier-parcel-tracking-1.0.0.jar
