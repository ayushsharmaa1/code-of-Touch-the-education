<?php include('inc/header.php'); ?>


<p></p>


<br>


  <?php 

$id = $_GET['id'];

  $user_check_query = "SELECT * FROM pages where id=  $id";
    //$result = mysqli_query($db, $user_check_query);
    //$details = mysqli_fetch_array($result);
$result = $db->query($user_check_query);
?>

                     <?php if ($result->num_rows > 0) {
while($row = $result->fetch_assoc()) {
  ?>
  <h1><?php echo $row['title']; ?></h1>
  <p>
<?php  echo $row['details'];?>
  </p>
<?php }}?>
      
<?php include('inc/sidebar.php'); ?>

