CREATE USER 'WebUser'@'44.222.20.187' IDENTIFIED BY 'WebUser1234';
GRANT ALL PRIVILEGES ON test_db.* TO 'WebUser'@'44.222.20.187';
FLUSH PRIVILEGES;
