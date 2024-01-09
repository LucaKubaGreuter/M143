<?php
$servername = "34.233.245.79"; // IP-Adresse des MySQL-Servers
$username = "WebUser";     // Ihr MySQL-Benutzername
$password = "WebUser1234"; // Ihr MySQL-Passwort
$dbname = "test_db";         // Name Ihrer Datenbank

// Verbindung zur Datenbank herstellen
$conn = new mysqli($servername, $username, $password, $dbname);

// Verbindung überprüfen
if ($conn->connect_error) {
  die("Verbindung fehlgeschlagen: " . $conn->connect_error);
}

// SQL query to select data from the tables
$sql = "SELECT users.username, posts.title, posts.content 
        FROM users 
        JOIN posts ON users.id = posts.user_id";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // Output data for each row
  while($row = $result->fetch_assoc()) {
    echo "<strong>User:</strong> " . $row["username"]. "<br>";
    echo "<strong>Post Title:</strong> " . $row["title"]. "<br>";
    echo "<strong>Content:</strong> " . $row["content"]. "<br><br>";
  }
} else {
  echo "No posts found";
}

// Close connection
$conn->close();
?>
