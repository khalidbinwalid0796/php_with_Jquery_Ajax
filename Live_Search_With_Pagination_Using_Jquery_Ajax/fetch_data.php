<style>
  .active_class {
    pointer-events: none !important ;
}
</style>

<?php

  include('db_con.php');

/*
  total records : 62;
  total links : 16; //that means total page number o 16 ta
  limit : 4; //per page 4 records will be show

  pagination : jokhon total page 4 ta tokhon 4 ta page number thake, baki sob somoy 7 ta page number thake.
  case 1 : total links > 4
    sub_case 1 : current page no < 5
        output : previous 1 2 3 4 5 ... last_page_number next
    sub_case 2 : current page no > 11
        output : previous 1 ... 26 27 28 29 30 31 last_page_number next
    sub_case 3 :  current page no < 11
        output : previous 1 ... 4 5 6... last_page_number next
  case 2 : total links < 4
    output : previous 1 2 3 4 next


*/


/*

Found a mistake, find: if ($next_id >= $total_links) {
Replaced by: if ($next_id > $total_links) {

*/

/*
*** problem1 solution ***
if($page > $end_limit)
    {
      $page_array[ ] = 1;
      $page_array[ ] = '...';


if($page > $end_limit)
    {

      $page_array[ ] = 1;

      if ($page >= ($limit*2)-2 ) {
        $page_array[] = '...';
      }

*/

$limit = 4;
$current_page = 1;

if($_POST['page'] > 1){
  $start = ($_POST['page'] - 1) * $limit;
  $current_page = $_POST['page'];
}else{
  $start = 0;
}


$sql = 'SELECT * FROM post';

if($_POST['search_query'] != '')
{
  $sql .= ' WHERE title LIKE "%'.str_replace(' ', '%', $_POST['search_query']).'%"';
  //" WHERE title LIKE'%".str_replace(' ', '%', $_POST['search_query']).'%"";
}

$sql .= ' ORDER BY id ASC ';


$search_res = mysqli_query($con,$sql);
$total_data = mysqli_num_rows($search_res);

$filter_sql = $sql . 'LIMIT '.$start.', '.$limit.'';
$res = mysqli_query($con,$filter_sql);


$result = array();
while ($post_data =mysqli_fetch_assoc($res) ) {
  $result[] = $post_data;
}

$output = '
<label>Total Records - '.$total_data.'</label>
<table class="table table-striped table-bordered">
  <tr>
    <th>ID</th>
    <th>Post Title</th>
  </tr>
';
if($total_data > 0)
{
  foreach($result as $row)
  {
    $output .= '
    <tr>
      <td>'.$row["id"].'</td>
      <td>'.$row["title"].'</td>
    </tr>
    ';
  }
}
else
{
  $output .= '
  <tr>
    <td colspan="2" align="center">No Data Found</td>
  </tr>
  ';
}

$output .= '
</table>
<br />
<div align="center">
  <ul class="pagination">
';

$total_links = ceil($total_data/$limit);
$previous_link = '';
$next_link = '';
$page_link = '';

//echo $total_links;
$page_array = array();

if($total_links > 4)
{
  if($current_page < 5)
  {
    for($count = 1; $count <= 5; $count++)
    {
      $page_array[] = $count;
    }
    $page_array[] = '...';
    $page_array[] = $total_links;
  }
  else
  {
    $end_limit = $total_links - 5;
    if($current_page > $end_limit)
    {
      $page_array[] = 1;
      $page_array[] = '...';

      // $page_array[ ] = 1;

      // if ($current_page >= ($limit*2)-2 ) {
      //   $page_array[] = '...';
      // }

      for($count = $end_limit; $count <= $total_links; $count++)
      {
        $page_array[] = $count;
      }
    }
    else
    {
      $page_array[] = 1;
      $page_array[] = '...';
      for($count = $current_page - 1; $count <= $current_page + 1; $count++)
      {
        $page_array[] = $count;
      }
      $page_array[] = '...';
      $page_array[] = $total_links;
    }
  }
}
else
{
  for($count = 1; $count <= $total_links; $count++)
  {
    //$page_array[] = $count;
    array_push($page_array, $count);
  }
}

//now page array conatain 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
for($count = 0; $count < count($page_array); $count++)
{
  if($current_page == $page_array[$count])
  {
    $page_link .= '
    <li class="page-item active">
      <a class="page-link active_class" href="#">'.$page_array[$count].' <span class="sr-only">(current)</span></a>
    </li>
    ';

    $previous_id = $page_array[$count] - 1;
    if($previous_id > 0)
    {
      $previous_link = '<li class="page-item"><a class="page-link" href="javascript:void(0)" data-page_number="'.$previous_id.'">Previous</a></li>';
    }
    else
    {
      $previous_link = '
      <li class="page-item disabled">
        <a class="page-link" href="#">Previous</a>
      </li>
      ';
    }
    $next_id = $page_array[$count] + 1;
    
    //if($next_id > $total_links)
    if($next_id > $total_links)
    {
      $next_link = '
      <li class="page-item disabled">
        <a class="page-link" href="#">Next</a>
      </li>
        ';
    }
    else
    {
      $next_link = '<li class="page-item"><a class="page-link" href="javascript:void(0)" data-page_number="'.$next_id.'">Next</a></li>';
    }
  }
  else
  {
    if($page_array[$count] == '...')
    {
      $page_link .= '
      <li class="page-item disabled">
          <a class="page-link" href="#">...</a>
      </li>
      ';
    }
    else
    {
      $page_link .= '
      <li class="page-item"><a class="page-link" href="javascript:void(0)" data-page_number="'.$page_array[$count].'">'.$page_array[$count].'</a></li>
      ';
    }
  }
}

$output .= $previous_link . $page_link . $next_link;
$output .= '
  </ul>

</div>
';

echo $output;

?>
