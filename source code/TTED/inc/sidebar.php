
</div>
<div id='cssmenu'>
<ul>
 <li><a href="index.php">Home</a></li>
    <li class='has-sub'><a href=''><span>Classes</span></a>
      <ul>
         <li class='has-sub'><a href='Kids.php'><span>Kids</span></a>

             <?php 
  $user_check_query = "SELECT * FROM class";

$result = $db->query($user_check_query);
?>
                     <?php if ($result->num_rows > 0) {
while($row = $result->fetch_assoc()) {
  ?>
  <li class='has-sub'><a href='classes.php?classid=<?php echo $row['id']; ?>'><span><?php echo $row['name']; ?></span></a></li>      <?php }}  ?>
                          
                              
       
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