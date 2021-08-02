<?php

/***
 * 
 * *** query lekhar somoy ***
 * "" dile suru hole variable lekhar niom '".$_POST["max_price"]."';
 * ' WHERE title LIKE "%'.str_replace(' ', '%', $_POST['search_query']).'%"'; //search ar somoy bese use hoy
 * 'order_date BETWEEN "'.$_POST["start_date"].'" AND "'.$_POST["end_date"].'" AND '
 * 
 * *** output show korar somoy ***
 * '' dile suru hole variable lekhar niom '$row['product_name']'
 *  $output =  '<div>
            <img src="images/'.$row['product_image'] .'" alt="" class="img-responsive" >
            <p align="center"><strong><a href="#">'.$row['product_name'].'</a></strong></p>
        </div>'
    echo $output    
 * 
 * ***/

include('db_con.php');
if(isset($_POST["action"]))
{
    //all data show
    $sql = "SELECT * FROM product"; 
    

    //filtering data show
    if(isset($_POST["min_price"], $_POST["max_price"]) && !empty($_POST["min_price"]) && !empty($_POST["max_price"]))
    {
        $sql .= " WHERE price BETWEEN '".$_POST["min_price"]."' AND '".$_POST["max_price"]."'";
    }
    
    $res=mysqli_query($con,$sql);
    $total_row = mysqli_num_rows($res);
    $output = '';
    if($total_row > 0){
        while ($row = mysqli_fetch_assoc($res)) {
            $output .= '
            <div class="col-sm-4 col-lg-3 col-md-3">
                <div style="border:1px solid #ccc; border-radius:5px; padding:16px; margin-bottom:16px; height:320px;">
                    <img src="images/'.$row['image'] .'" alt="" class="img-responsive" >
                    <p align="center"><strong><a href="#">'.$row['name'].'</a></strong></p>
                    <h4 style="text-align:center;" class="text-danger" >'.$row['price'].'</h4>
                </div>
            </div>';
        }
    }else{
        $output = '<h3>No Data Found</h3>';
    }
    echo $output;
}
?>