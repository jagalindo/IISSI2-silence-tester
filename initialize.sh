#!/bin/bash
user=${GIT_USER}
pass=${GIT_PASS}
echo "$user:$pass"
userpass="$user:$pass@github";
urlWithPass=${GIT_REPO/github/$userpass};
echo $GIT_REPO;
gclonecd() {
  git clone "$urlWithPass" && cd "$(basename "$GIT_REPO" .git)"
}
gclonecd $1;

echo "DB_CONN = {
    \"host\": \"db\",
    \"port\": 3306,
    \"username\": \"root\",
    \"password\": \"toor\",
    \"database\": \"database\",
}" >> settings.py;

echo "LISTEN_ADDRESS = \"0.0.0.0\"" >> settings.py;

silence createdb;
silence run;
