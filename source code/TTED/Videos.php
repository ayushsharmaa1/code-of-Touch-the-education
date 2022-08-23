<?php 

include_once('server.php');

  if (!isset($_SESSION['username'])) {
  	$_SESSION['msg'] = "You must log in first";
  	header('location: login.php');
  }
  if (isset($_GET['logout'])) {
  	session_destroy();
  	unset($_SESSION['username']);
  	header("location: login.php");
  }
?>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div class="header">
	<h2>Touch The Education</h2>
 <?php  if (isset($_SESSION['username'])) : ?>
      <p style=" text-align: left; position: absolute;">Welcome <strong><?php echo $_SESSION['username']; ?></strong></p> <p style="text-align: right;"> <a href="index.php?logout='1'" style="color: red;">logout</a> </p>
</div>
<div class="content" >
  	<?php if (isset($_SESSION['success'])) : ?>
      <div class="error success" >
      	<h3>
          <?php 
          	echo $_SESSION['success']; 
          	unset($_SESSION['success']);
          ?>
      	</h3>
      </div>
  	<?php 
var_dump($db);die;
    endif ?>

    <h3></h3>
     <style>
* {
    box-sizing: border-box;
}

.column {
    float: left;
    width: 100%;
    padding: 0px;
    border-bottom: 2px solid white;
    border-right: 2px solid white;
}


.row:after {
    content: "";
    display: table;
    clear: both;
}
.btn {
    border: none;
    outline: none;
    padding: 12px 16px;
    background-color: #5F9EA0;
    cursor: pointer;
}
body {
  padding: 0px;
}

a {
  display: inline-block;
  margin-bottom: 0px;
  color: #000;
  font-family: Arial, sans-serif;
}

.btn:hover {
    background-color: #5F9EA0;
}

.btn.active {
    background-color: #5F9EA0;
    color: white;
}
</style>    <?php endif ?>

<?php 
  $user_check_query = "SELECT * FROM videos";
    //$result = mysqli_query($db, $user_check_query);
    //$details = mysqli_fetch_array($result);
$result = $db->query($user_check_query);
if ($result->num_rows > 0) {
while($row = $result->fetch_assoc()) {
?>

 
<iframe id="video" width="420" height="315" src="//www.youtube.com/embed/<?php echo $row['url']; ?>?rel=0" frameborder="0" allowfullscreen></iframe>
<?php }}?>
</div>
<div id='cssmenu'>

<ul>

  <li><a href="index.php">Home</a></li>
    <li class='has-sub'><a href='classes.php'><span>Classes</span></a>
      <ul>
        
            <ul>
               <li><a href='#'><span>Sub Product</span></a></li>
               <li class='last'><a href='#'><span>Sub Product</span></a></li>
            </ul>
         </li>
      </ul>
   </li>
  <li class=' has-sub'><a href='Videos.php'><span>Videos</span></a>

<li class='last'><a href='News.php'><span>News</span></a></li>
  <li><a href="Request.php">Request</a></li>

</div>
	
</body>

</html>