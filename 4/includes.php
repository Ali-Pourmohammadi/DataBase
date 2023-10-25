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
$insert_message = "INSERT INTO messages (title, body , sender_email) VALUES ('error in connection', 'please help me' , 'rezaPirmoradi@gmail.com')";
// update table 
$update_sql = "UPDATE customers SET is_deleted = true WHERE  id = 1";
// delete 
$delete_sql = "DELETE FROM customers WHERE is_deleted = true";

if (mysqli_query($conn, $insert_message)) {
    echo "Customer record updated successfully";
} else {
    echo "Error: " . $insert_message. "<br>" . mysqli_error($conn);
}
mysqli_close($conn);