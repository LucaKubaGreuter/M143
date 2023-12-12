SELECT users.username, posts.title, posts.content
FROM users
INNER JOIN posts ON users.id = posts.user_id;