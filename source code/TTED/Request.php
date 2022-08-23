<?php 
  session_start(); 

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

.btn:hover {
    background-color: #5F9EA0;
}

.btn.active {
    background-color: #5F9EA0;
    color: white;
}

body {font-family: Arial, Helvetica, sans-serif;}

input[type=text], select, textarea {
    width: 100%;
    padding: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
    margin-left: -25%;
    margin-top: -140px;
}


</style>  
<div class="container">
  <form action="/action_page.php">
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name..">

    <label for="Books">Class</label>
    <select id="Class" name="Class">
      <option value="kid">kids</option>
      <option value="Three">Three</option>
      <option value="Four">Four</option>
      <option value="Five">Five</option>
      <option value="Six">Six</option>
      <option value="Seven">Seven</option>
      <option value="Eight">Eight</option>
      <option value="Nine">Nine</option>
      <option value="S.E.E">S.E.E</option>
      <option value="Eleven">Eleven</option>
      <option value="H.S.E.B">H.S.E.B</option>
    </select>

    <label for="lname">Book Name</label>
    <input type="text" id="lname" name="Book Name" placeholder="Book Name..">

    <label for="Books">Publication</label>
    <select id="Books" name="Books">
      <option value="australia">Ashmita</option>
      <option value="canada">Buddha</option>
      <option value="usa">A.K Book</option>
    </select>

    <label for="subject">Subject</label>
    <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>

    	
    <?php endif ?>

</div>
<div id='cssmenu'>
<ul>

  <li><a href="index.php">Home</a></li>
    <li class='has-sub'><a href='Classes.php'><span>Classes</span></a>
      <ul>
         </li>
            <ul>
               <li><a href='#'><span>Sub Product</span></a></li>
               <li class='last'><a href='#'><span>Sub Product</span></a></li>
            </ul>
         </li>
      </ul>
   </li>

  <li class=' has-sub'><a href='Videos.php'><span>Videos</span></a>
      <ul>
</ul>

<li class='last'><a href='News.php'><span>News</span></a></li>
  <li><a href="Request.php">Request</a></li>

</div>
		
</body>
</html>