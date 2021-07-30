<?php

include('db_con.php');
if(isset($_POST["action"]))
{
    //all data show
    $sql = "SELECT * FROM product WHERE product_status = '1'"; 
    

    //filtering data show
    //slider
    if(isset($_POST["min_price"], $_POST["max_price"]) && !empty($_POST["min_price"]) && !empty($_POST["max_price"]))
    {
        $sql .= " AND product_price BETWEEN '".$_POST["min_price"]."' AND '".$_POST["max_price"]."'";
    }
    
    //brand
    if(isset($_POST["brand"]))
    {
        $brand_filter = implode("','", $_POST["brand"]); //array converted into string
        $sql .= " AND product_brand IN('".$brand_filter."')";
    }

    //ram
    if(isset($_POST["ram"]))
    {
        $ram_filter = implode("','", $_POST["ram"]);
        $sql .= " AND product_ram IN('".$ram_filter."')";
    }

    //storage
    if(isset($_POST["storage"]))
    {
        $storage_filter = implode("','", $_POST["storage"]);
        $sql .= " AND product_storage IN('".$storage_filter."')";
    }

    $res=mysqli_query($con,$sql);
    $total_row = mysqli_num_rows($res);
    $output = '';
    if($total_row > 0){
        while ($row = mysqli_fetch_assoc($res)) {
            $output .= '
            <div class="col-sm-4 col-lg-3 col-md-3">
                <div style="border:1px solid #ccc; border-radius:5px; padding:16px; margin-bottom:16px; height:320px;">
                    <img src="images/'.$row['product_image'] .'" alt="" class="img-responsive" >
                    <p align="center"><strong><a href="#">'.$row['product_name'].'</a></strong></p>
                    <h4 style="text-align:center;" class="text-danger" >'.$row['product_price'].'</h4>
                    <p>Camera : '. $row['product_camera'].' MP<br />
                    Brand : '. $row['product_brand'] .' <br />
                    RAM : '. $row['product_ram'] .' GB<br />
                    Storage : '. $row['product_storage'] .' GB </p>
                </div>
            </div>';
        }
    }else{
        $output = '<h3>No Data Found</h3>';
    }
    echo $output;
}
?>