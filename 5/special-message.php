<?php 
$dbHost = "localhost";
$dbUser = "root";
$dbPass = "";
$dbName  = "northwind";
$dbc = new mysqli( $dbHost, $dbUser, $dbPass, $dbName );
$sql = "SELECT * FROM messages WHERE id  = 2";
$result = $dbc -> query( $sql );
$table = $result -> fetch_all( MYSQLI_ASSOC);
echo json_encode( $table );
?>