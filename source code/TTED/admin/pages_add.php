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
		$class_id=$_POST['class_id'];

	$status=$_POST['status'];
		$posteddate=$_POST['posteddate'];
		$editor1=$_POST['editor1'];


 
  $query = "INSERT INTO pages (cat_id, class_id, title,posteddate,details) 
            VALUES('$cat_id', '$class_id', '$title', '$posteddate','$editor1')";
              mysqli_query($db, $query);

}
?>
   <div class="col-md-9">
            <!-- Website Overview -->
            <div class="panel panel-default">
              <div class="panel-heading main-color-bg">
                <h3 class="panel-title">Add Pages Form</h3>
              </div>
              <div class="panel-body">
                <form method="post" action="">
                  <div class="form-group">
                    <label>Tutor Title</label>
                    <input type="text" class="form-control" name="title" placeholder=" Title" >
                  </div>
                  <div class="form-group">
                    <label>Posted Date</label>
                    <input type ="date" class="form-control" name="posteddate" placeholder="posteddate">
                    
                  </div>
                  <div class="checkbox">
                    <label>
                      <input type="checkbox" value="1" name="status" checked> Published
                    </label>
                  </div>
                  <div class="form-group">
                    <label>Select Category</label>
                   <select class="form-group" name="cat_id">
                   	<?php 
  $user_check_query = "SELECT * FROM category";
$result = $db->query($user_check_query);
?>
                     <?php if ($result->num_rows > 0) {
while($row = $result->fetch_assoc()) {
  ?>
<option value="<?php  echo $row['id']; ?>"><?php echo 'class-'.$row['classid'] .'-'. $row['title']; ?></option>
<?php } }?>
                   </select>
                  </div>

                             <div class="form-group">
                    <label>Select Class</label>
                   <select class="form-group" name="class_id">
                   	<?php 
  $user_check_query = "SELECT * FROM class";
$result = $db->query($user_check_query);
?>
                     <?php if ($result->num_rows > 0) {
while($row = $result->fetch_assoc()) {
  ?>
<option value="<?php  echo $row['id']; ?>"><?php echo $row['name']; ?></option>
<?php } }?>
                   </select>
                  </div>

                     <div class="form-group">
                    <label>Body Details </label>
                    <textarea name="editor1" class="form-control" placeholder="Page Body">
                    </textarea>
                  </div>
           
                  <input type="submit" name="submit" class="btn btn-default" value="Submit">
                </form>
              </div>
              </div>

          </div>



  <script>
     CKEDITOR.replace( 'editor1' );
 </script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>