<?php
$host = 'localhost';
$user = 'root';
$pass = ''; 
$db   = 'db_berita';

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) die("Gagal: " . $conn->connect_error);
?>