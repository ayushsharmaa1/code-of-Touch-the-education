<?php 
include('server.php');
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
    <?php endif ?>

    <h3></h3>
    
      
    <?php endif ?>
    <style>
* {
    box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
    float: left;
    width: 50%;
    padding: 40px;
    border-bottom: 4px solid white;
    border-right: 6px solid white;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}
/* Style the buttons */
.btn {
    border: none;
    outline: none;
    padding: 12px 16px;
    background-color: #5F9EA0;
    cursor: pointer;
}

.btn:hover {
    background-color: #5F9EA0;
}

.btn.active {
    background-color: #5F9EA0;
    color: white;
}
</style>  