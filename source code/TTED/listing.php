<?php include('inc/header.php'); ?>

<h2>Home</h2>

<p></p>

<div id="btnContainer">
<button class="btn" onclick="listView()"><i class="fa fa-bars"></i> List</button> 
<button class="btn active" onclick="gridView()"><i class="fa fa-th-large"></i> Grid</button>
</div>
<br>


<div class="row">
  <?php 

$classid = $_GET['classid'];
$categoryid = $_GET['categoryid'];

  $user_check_query = "SELECT * FROM pages where cat_id= $categoryid AND class_id=$classid";
    //$result = mysqli_query($db, $user_check_query);
    //$details = mysqli_fetch_array($result);
$result = $db->query($user_check_query);
?>

                     <?php if ($result->num_rows > 0) {
while($row = $result->fetch_assoc()) {
  ?>
<a href="details.php?id=<?php echo $row['id']; ?>"> <div class="column" style="background-color:#006666;">
    <h2><?php echo $row['title']; ?></h2>
  </div></a>
<?php }}?>
</div>
      
<?php include('inc/sidebar.php'); ?>

