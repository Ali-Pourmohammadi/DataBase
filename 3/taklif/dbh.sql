// select 
$slecet_all = select *  from products;
// select
$select_product = select * from products WHERE  product_id = 2;
if (mysqli_query($conn, $delete_sql)) {
    echo "Customer record updated successfully";
} else {
    echo "Error: " . $delete_sql. "<br>" . mysqli_error($conn);
}