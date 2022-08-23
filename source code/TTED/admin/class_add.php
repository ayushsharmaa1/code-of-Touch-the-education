  <?php 
include('inc/header.php');
?>

    <section id="main">
      <div class="container">
        <div class="row">
       

          <?php 
include('inc/sidebar.php');

if(isset($_POST['submit'])){

	$name=$_POST['name'];
	$status=$_POST['status'];
  $query = "INSERT INTO class (name, status) 
            VALUES('$name', '$status')";
              mysqli_query($db, $query);

}
?>
   <div class="col-md-9">
            <!-- Website Overview -->
            <div class="panel panel-default">
              <div class="panel-heading main-color-bg">
                <h3 class="panel-title">Add class Form</h3>
              </div>
              <div class="panel-body">
                <form method="post" action="">
                  <div class="form-group">
                    <label>class Title</label>
                    <input type="text" class="form-control" name="name" placeholder="Page Title" >
                  </div>
               
                  <div class="checkbox">
                    <label>
                      <input type="checkbox" value="1" name="status" checked> Published
                    </label>
                  </div>
           
               
                  <input type="submit" name="submit" class="btn btn-default" value="Submit">
                </form>
              </div>
              </div>

          </div>