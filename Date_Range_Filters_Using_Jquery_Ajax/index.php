<html>
 <head>
    <title>Date Range Filter Using Datatables & DatePicker</title>
  
    <!-- data tables -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
    <!-- date picker -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

  <style>
        body
        {
        margin:0;
        padding:0;
        background-color:#f1f1f1;
        }
        .box
        {
        width:1270px;
        padding:20px;
        background-color:#fff;
        border:1px solid #ccc;
        border-radius:5px;
        margin-top:25px;
        }
  </style>
  

 </head>
    <body>
    <div class="container box">
        <h1 align="center">Date Range Filter Using Datatables & DatePicker</h1>
        <br />
        <div class="table-responsive">
            <br />
            <div class="row">
                <div class="input-daterange">
                    <div class="col-md-4">
                        <input type="text" name="start_date" id="start_date" class="form-control" />
                    </div>
                    <div class="col-md-4">
                        <input type="text" name="end_date" id="end_date" class="form-control" />
                    </div>      
                </div>
                <div class="col-md-4">
                    <input type="button" name="search" id="search" value="Search" class="btn btn-info" />
                </div>
            </div>
            <br />
            <table id="order_data" class="table table-bordered table-striped">
             <thead>
                <tr>
                    <th>Order ID</th>
                    <th>Customer Name</th>
                    <th>Item</th>
                    <th>Value</th>
                    <th>Order Date</th>
                </tr>
             </thead>
            </table>
        </div>
    </div>
    </body>

<script>
    $(document).ready(function() {

        $('#start_date').datepicker({
            dateFormat: "yy-mm-dd",
            //todayBtn: true,
            autoclose: true
        });

        $('#end_date').datepicker({
            dateFormat: "yy-mm-dd",
            //todayBtn: "linked",
            autoclose: true
        });

        fetch_data('no');

        function fetch_data(is_date_search, start_date='', end_date='')
        {
            $('#order_data').DataTable({
                "processing" : true, //enable rocessing indicator
                "serverSide" : true, //enable server side processing mode
                "order" : [], //blank array initialize for ordering table column in asc or desc order
                "ajax" : {
                    url: "fetch_data.php",
                    //method: "POST",
                    type : "POST",
                    data:{is_date_search:is_date_search, start_date:start_date, end_date:end_date}
                }
            });
        }

        $('#search').click(function(){
            var start_date = $('#start_date').val();
            var end_date = $('#end_date').val();
            if(start_date != '' && end_date !='')
            {
                $('#order_data').DataTable().destroy();
                fetch_data('yes', start_date, end_date);
            }
            else
            {
                alert("Both Date is Required");
            }
        });

    });
</script>

</html>