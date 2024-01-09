CREATE DATABASE test_db;
 
USE test_db;
 
CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(255) UNIQUE NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL
);
 
INSERT INTO users (username, email, password)
VALUES
  ('johndoe', 'johndoe@example.com', 'password123'),
  ('janedoe', 'janedoe@example.com', 'password456'),
  ('petersmith', 'petersmith@example.com', 'password789');
 
CREATE TABLE posts (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  user_id INT NOT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id)
);
 
INSERT INTO posts (title, content, user_id)
VALUES
  ('My First Post', 'This is my first post on the test blog.', 1),
  ('Another Post', 'This is another post on the test blog.', 2),
  ('Third Post', 'This is the third post on the test blog.', 3);