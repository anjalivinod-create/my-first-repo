cp /home/ec2-user/my-first-repo/catalogue.service /etc/systemd/system/catalogue.service
dnf module disable nodejs -y
dnf module enable nodejs:20 -y


dnf install nodejs -y

useradd roboshop

cp mongo.repo /etc/systemd/system/catalogue.service

mkdir /app


curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue-v3.zip
cd /app
unzip /tmp/catalogue.zip

cd /app
npm install


systemctl daemon-reload


dnf install mongod-mongosh -y
mongosh--host mongodb-dev.anjalidevops72.shop </app/db/master-data.js

systemctl enable catalogue
systemctl restart catalogue