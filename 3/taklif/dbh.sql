// update table 
$update_sql = "UPDATE customers SET is_deleted = true WHERE  id = 1";
// delete 
$delete_sql = "DELETE FROM customers WHERE is_deleted = true";
if (mysqli_query($conn, $delete_sql)) {
    echo "Customer record updated successfully";
} else {
    echo "Error: " . $delete_sql. "<br>" . mysqli_error($conn);
}