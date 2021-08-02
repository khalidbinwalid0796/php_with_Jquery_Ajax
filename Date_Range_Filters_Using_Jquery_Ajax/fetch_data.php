<?php
	include('db_con.php');

	//for sorting table column
	$columns = array('order_id', 'order_customer_name', 'order_item', 'order_value', 'order_date');

	$sql = "SELECT * FROM tbl_order WHERE ";

	if($_POST["is_date_search"] == "yes")
	{
		$sql .= 'order_date BETWEEN "'.$_POST["start_date"].'" AND "'.$_POST["end_date"].'" AND ';
	}

	//["search"]["value"]-->for datatable & search_text find in all column
	if(isset($_POST["search"]["value"]))
	{
		$sql .= ' (order_id LIKE "%'.$_POST["search"]["value"].'%" OR order_customer_name LIKE "%'.$_POST["search"]["value"].'%" OR order_item LIKE "%'.$_POST["search"]["value"].'%" OR order_value LIKE "%'.$_POST["search"]["value"].'%")';
	}

	//now sort table column in asc or desc
	if(isset($_POST["order"])) //but order[] to empty tahole sort hosse kno??????????????????????????
	{
		$sql .= 'ORDER BY '.$columns[$_POST['order']['0']['column']].' '.$_POST['order']['0']['dir'].' ';
	}else{
		$sql .= 'ORDER BY order_id ASC ';
	}

	$sql1 = '';

	if($_POST["length"] != -1) //-1 means all data
	{
		//data show per page; start & end value define
		$sql1 = 'LIMIT ' . $_POST['start'] . ', ' . $_POST['length']; //query aivabe lekha jai???????????????????
	}

	$number_filter_row = mysqli_num_rows(mysqli_query($con, $sql));

	$result = mysqli_query($con, $sql . $sql1);

	$data = array();

	while($row = mysqli_fetch_array($result))
	{
		$sub_array = array();
		$sub_array[] = $row["order_id"];
		$sub_array[] = $row["order_customer_name"];
		$sub_array[] = $row["order_item"];
		$sub_array[] = $row["order_value"];
		$sub_array[] = $row["order_date"];
		$data[] = $sub_array;
	}

	function get_all_data($con)
	{
		$sql = "SELECT * FROM tbl_order";
		$result = mysqli_query($con, $sql);
		return mysqli_num_rows($result);
	}

	$output = array(
		"draw"    => intval($_POST["draw"]),
		"recordsTotal"  =>  get_all_data($con),
		"recordsFiltered" => $number_filter_row, //Showing 1 to 10 of 120 entries
		"data"    => $data
	);

	echo json_encode($output);
	//echo $output;

?>