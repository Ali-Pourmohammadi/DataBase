<?php
$host = "localhost";
$username = "root";
$password = "";
$database = "northwind";
$conn = mysqli_connect($host, $username, $password, $database);

//error handling
if (!$conn) {
    die("Connecti`on failed: " . mysqli_connect_error());
}

// insert to table
$insert_sql = "INSERT INTO customers (first_name , last_name , company) VALUES ('reza' , 'khani' , 'xxxCompany')";
if (mysqli_query($conn, $insert_sql)) {
    echo "Customer record updated successfully";
} else {
    echo "Error: " . $insert_sql. "<br>" . mysqli_error($conn);
}
mysqli_close($conn);