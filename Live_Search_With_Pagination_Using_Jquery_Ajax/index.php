<!DOCTYPE html>
<html>

  <head>
    <title>Live Search With Pagination</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css">
  </head>

  <body>
    <br />
    <div class="container">
      <h3 align="center">Live Search With Pagination using Ajax</h3>
      <br />
      <div class="card">

        <div class="card-header">Dynamic Data</div>

        <div class="card-body">

          <div class="form-group">
            <input type="text" name="search_item" id="search_item" class="form-control" placeholder="Type your search query here" />
          </div>

          <div id="dynamic_content">
            
          </div>
        </div>

      </div>

    </div>
  </body>

</html>
<script>

  $(document).ready(function(){

    load_data(1);

    function load_data(page, search_query = '')
    {
      $.ajax({
        url:"fetch_data.php",
        method:"POST",
        data:{page:page, search_query:search_query},
        success:function(data)
        {
          $('#dynamic_content').html(data);
        }
      });
    }

    $(document).on('click', '.page-link', function(){
      var page = $(this).data('page_number');
      var search_query = $('#search_item').val();
      load_data(page, search_query);
    });

    $('#search_item').keyup(function(){
      var search_query = $('#search_item').val();
      load_data(1, search_query);
    });

  });
</script>
