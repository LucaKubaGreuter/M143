<?php
$ssh_host = '3.228.34.74';  // Your SSH server IP or hostname
$ssh_port = 22;             // SSH port, default is 22
$ssh_user = 'ubuntu';       // SSH username
$ssh_key = '/home/ubuntu/sql_rsa';  // Path to your private key file

$remote_host = '127.0.0.1';  // MySQL server IP or hostname
$remote_port = 3306;         // MySQL port, default is 3306

$local_port = 3307;          // Local port for tunneling, choose a free port

// Establish SSH tunnel
$connection = ssh2_connect($ssh_host, $ssh_port);
ssh2_auth_pubkey_file($connection, $ssh_user, $ssh_key . '.pub', $ssh_key);

$command = " -L $local_port:$remote_host:$remote_port";
$stream = ssh2_exec($connection, '/usr/bin/ssh' . $command);

// Wait for the tunnel to be established
sleep(2);

// Connect to MySQL server through the tunnel
$mysqli = new mysqli('127.0.0.1', 'myuser', 'test_db', $local_port);

// Check connection
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

echo "Connected successfully";

// Perform your database operations here

// Close the SSH connection and MySQL connection
fclose($stream);
$mysqli->close();
?>