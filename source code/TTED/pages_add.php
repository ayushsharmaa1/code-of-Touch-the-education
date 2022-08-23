<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Area | Edit Page</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <script src="http://cdn.ckeditor.com/4.6.1/standard/ckeditor.js"></script>
  </head>
  <body>

  	  <?php 
include('inc/header.php');
?>

    <section id="main">
      <div class="container">
        <div class="row">
       

          <?php 
include('inc/sidebar.php');

if(isset($_POST['submit'])){

	$title=$_POST['title'];
	$cat_id=$_POST['cat_id'];
	$status=$_POST['status'];
  $url=$_POST['url'];
 
  $query = "INSERT INTO videos (title, cat_id, status,url) 
            VALUES('$title', '$cat_id', '$status', '$url')";
              mysqli_query($db, $query);

}
?>
   <div class="col-md-9">
            <!-- Website Overview -->
            <div class="panel panel-default">
              <div class="panel-heading main-color-bg">
                <h3 class="panel-title">Add Videos Form</h3>
              </div>
              <div class="panel-body">
                <form method="post" action="">
                  <div class="form-group">
                    <label>Video Title</label>
                    <input type="text" class="form-control" name="title" placeholder="Page Title" >
                  </div>
                  <div class="form-group">
                    <label>URL</label>
                    <input type ="text" class="form-control" name="url" placeholder="Page Body">
                    
                  </div>
                  <div class="checkbox">
                    <label>
                      <input type="checkbox" value="1" name="status" checked> Published
                    </label>
                  </div>
                  <div class="form-group">
                    <label>Category Type</label>
                   <select class="form-group" name="cat_id">
                   	<?php 
  $user_check_query = "SELECT * FROM category";
$result = $db->query($user_check_query);
?>
                     <?php if ($result->num_rows > 0) {
while($row = $result->fetch_assoc()) {
  ?>
<option value="<?php  echo $row['id']; ?>"><?php echo $row['title']; ?></option>
<?php } }?>
                   </select>
                  </div>
           
                  <input type="submit" name="submit" class="btn btn-default" value="Submit">
                </form>
              </div>
              </div>

          </div>



  <script>
     CKEDITOR.replace( 'editor1' );
 </script>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>