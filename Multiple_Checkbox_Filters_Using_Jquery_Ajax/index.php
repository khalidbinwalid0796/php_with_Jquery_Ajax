<?php 
	include('db_con.php');
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Product Filters Price Range Using PHP Mysql and Jquery Ajax</title>
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"> -->
		<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<!-- <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
		<!-- jquery slider; link : https://jqueryui.com/slider/ -->
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	</head>
<body>
	<div class="container">
		<div class="row">
			<br />
			<h2 align="center">Product Filters Price Range Using PHP Mysql and Jquery Ajax</h2>
			<div class="col-md-3">
				<div>
					<h3>Price</h3>
					<input type="hidden" id="hidden_minimum_price" value="0"/>
					<input type="hidden" id="hidden_maximum_price" value="65000"/>
					<p id="price_show">1000 - 65000</p>
					<div id="price_range"></div>
				</div>

				<div>
					<h3>Brand</h3>
					<?php
						$sql = "SELECT distinct product_brand FROM product";
						$res=mysqli_query($con,$sql); 
					?>

					<?php 
						while ($row = mysqli_fetch_assoc($res)) {
					?>				
					<div>
						<label><input type="checkbox" class="common_selector brand" value="<?php echo $row['product_brand']; ?>"><?php echo $row['product_brand']; ?></label>
					</div>
					<?php } ?>

				</div>

				<div>
					<h3>Ram</h3>
					<?php
						$sql = "SELECT distinct product_ram FROM product";
						$res=mysqli_query($con,$sql); 
					?>

					<?php 
						while ($row = mysqli_fetch_assoc($res)) {
					?>		
					<div>
						<label><input type="checkbox" class="common_selector ram" value="<?php echo $row['product_ram']; ?>"><?php echo $row['product_ram']; ?> GB </label>
					</div>
					<?php } ?>
				</div>

				<div>
					<h3>Internal Storage</h3>
					<?php
						$sql = "SELECT distinct product_storage FROM product";
						$res=mysqli_query($con,$sql); 
					?>

					<?php 
						while ($row = mysqli_fetch_assoc($res)) {
					?>			
					<div>
						<label><input type="checkbox" class="common_selector storage" value="<?php echo $row['product_storage']; ?>"><?php echo $row['product_storage']; ?> GB </label>
					</div>
					<?php } ?>
				</div>

			</div>
			<div class="col-md-9">
				<br />
				<div class="row filter_data">
				</div>
			</div>
		</div>
	</div>

	<style>
		#loading{ text-align: center; background: url('images/loader.gif') no-repeat center; height: 150px; }
	</style>

	<script>
		$(document).ready(function(){
			filter_data(); //all data show
			function filter_data(){
				$('.filter_data').html('<div id="loading" style="" ></div>');
				var action = 'fetch_data';
				var max_price = $('#hidden_maximum_price').val();
				var min_price = $('#hidden_minimum_price').val();
				//get_filter() a brand, ram, storage class name gulo pass korte hobe
				var brand = get_filter('brand');
				var ram = get_filter('ram');
				var storage = get_filter('storage');
				//console.log(min_price);
				//brand,ram,storage are passed as array in fetch_data.php page
				$.ajax({
					url : "fetch_data.php",
					method : "POST",
					data : {action:action, min_price:min_price, max_price:max_price, brand:brand, ram:ram, storage:storage},
					success:function(data){
						$('.filter_data').html(data);
					}
				});
			}

			function get_filter(class_name){
				var filter = [];
				$('.'+class_name+':checked').each(function(){
					filter.push($(this).val());
				});
				return filter;
			}

			//checkbox a click korle filter_data() call hobe
		    $('.common_selector').click(function(){
		        filter_data();
		    });

			$('#price_range').slider({
				range:true,
				min:1000,
				max:65000,
				values:[1000,65000],
				step:500,
				stop:function(event, ui){
					//console.log(ui.values[0]); //min value
					//console.log(ui.values[1]); //max value
					$('#price_show').html(ui.values[0] + ' - ' + ui.values[1])
					$('#hidden_minimum_price').val(ui.values[0]);
					$('#hidden_maximum_price').val(ui.values[1]);

					filter_data(); //filtering data show
				}
			});

		});
	</script>
</body>
</html>