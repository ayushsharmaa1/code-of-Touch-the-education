<?php 
include('inc/header.php');
?>

    <section id="main">
      <div class="container">
        <div class="row">
       

          <?php 
include('inc/sidebar.php');
?>

          <div class="col-md-9">
            <!-- Website Overview -->
            <div class="panel panel-default">
              <div class="panel-heading main-color-bg">
                <h3 class="panel-title"><a href="category_add.php">Add New Category</a></h3>
              </div>
              
              </div>
<?php 
  $user_check_query = "SELECT * FROM category";
    //$result = mysqli_query($db, $user_check_query);
    //$details = mysqli_fetch_array($result);
$result = $db->query($user_check_query);
?>

   
              <!-- Latest Users -->
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h3 class="panel-title">Latest Users</h3>
                </div>
                <div class="panel-body">
                  <table class="table table-striped table-hover">
                      <tr>
                        <th>id</th>
                        <th>Title</th>
                        <th>Category Type</th>

                        <th>Class ID</th>
                        <th>Status</th>
                      </tr>

                     <?php if ($result->num_rows > 0) {
while($row = $result->fetch_assoc()) {
  ?>
                      <tr>
                        <td><?php echo $row['id']; ?></td>
                        <td><?php echo $row['title']; ?></td>
                        <td><?php echo $row['category']; ?></td>

                        <td><?php echo $row['classid']; ?></td>
                        <td><?php echo $row['status']; ?></td>
                      </tr>
                <?php }}?>
                    </table>
                </div>
              </div>
          </div>
        </div>
      </div>
    </section>

   <?php 
include('inc/footer.php')
   ?>