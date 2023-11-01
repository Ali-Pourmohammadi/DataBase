<?php 
$dbHost = "localhost";
$dbUser = "root";
$dbPass = "";
$dbName  = "northwind";
$dbc = new mysqli( $dbHost, $dbUser, $dbPass, $dbName );
$selectEmployees = "SELECT * FROM products";
$result = $dbc -> query( $selectEmployees );
$table = $result -> fetch_all( MYSQLI_ASSOC);
echo json_encode( $table );
?>