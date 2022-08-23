<style type="text/css">
#example1 {
    border: 2px solid black;
    padding: 16px;
    border-radius: 25px;
    margin-bottom: 15px;
    margin-right: -1px;
}
h2{
  color: black;
}
</style>
<?php include('inc/header.php'); ?>

<h2>Home</h2>

<p></p>

<div id="btnContainer">
<button class="btn" onclick="listView()"><i class="fa fa-bars"></i> List</button> 
<button class="btn active" onclick="gridView()"><i class="fa fa-th-large"></i> Grid</button>
</div>
<br>


  <?php 

  $user_check_query = "SELECT * FROM class ";
    //$result = mysqli_query($db, $user_check_query);
    //$details = mysqli_fetch_array($result);
$result = $db->query($user_check_query);
?>

  <?php if ($result->num_rows > 0) {
while($row = $result->fetch_assoc()) {
  ?>

<div class="">

  <a href='classes.php?classid=<?php echo $row['id']; ?>'><div class="column " id="example1" style="background-color:#5f9ea0;">
    <h2><?php echo $row['name']; ?></h2>
    <img style="float: right; margin: 0px 0px 0px 180px;" src="Books.jpg" width="100" />
  </div></a>

</div>
<?php }}?>




<?php include('inc/sidebar.php'); ?>

