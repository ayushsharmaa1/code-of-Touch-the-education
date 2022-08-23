  <?php 
include('inc/header.php');
?>

    <section id="main">
      <div class="container">
        <div class="row">
       

          <?php 
include('inc/sidebar.php');

if(isset($_POST['submit'])){

	$cat_title=$_POST['cat_title'];
	$description=$_POST['description'];
	$status=$_POST['status'];
  $cat_type=$_POST['cat_type'];
    $classid=$_POST['classid'];

  $cat_summary=$_POST['cat_summary'];
  $query = "INSERT INTO category (title,classid, description, status,category) 
            VALUES('$cat_title','$classid', '$description', '$status', '$cat_type')";
              mysqli_query($db, $query);

}
?>
   <div class="col-md-9">
            <!-- Website Overview -->
            <div class="panel panel-default">
              <div class="panel-heading main-color-bg">
                <h3 class="panel-title">Add Category Form</h3>
              </div>
              <div class="panel-body">
                <form method="post" action="">
                                <div class="form-group">
                    <label>Select Class</label>
                   <select class="form-group" name="classid">
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
                    <label>Category Title</label>
                    <input type="text" class="form-control" name="cat_title" placeholder="Subject Title" >
                  </div>
                  <div class="form-group">
                    <label>Category Description</label>
                    <input type ="text" class="form-control" name="description" placeholder="Category Discription">
                    
                  </div>
                  <div class="checkbox">
                    <label>
                      <input type="checkbox" value="1" name="status" checked> Published
                    </label>
                  </div>
                  <div class="form-group">
                    <label>Subject Type</label>
                    <input type="text" class="form-control" name="cat_type" placeholder="Add Category Type" >
                  </div>
                  <div class="form-group">
                    <label>Category Summary</label>
                    <input type="text" class="form-control" name="cat_summary" placeholder="Add Category Summary">
                  </div>
                  <input type="submit" name="submit" class="btn btn-default" value="Submit">
                </form>
              </div>
              </div>

          </div>