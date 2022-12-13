<link rel="stylesheet" href="css/style1.css">
<header class="header">

   <div class="flex">

      <a href="#" class="logo">Frisky Clo.</a>

      <nav class="navbar">
         <a href="index.php">View Products</a>
         <a href="#limited">Limited Offer</a>
         <a href="about.html">About Us</a>
      </nav>

      <?php
      
      $select_rows = mysqli_query($conn, "SELECT * FROM `cart`") or die('query failed');
      $row_count = mysqli_num_rows($select_rows);

      ?>

      <a href="cart.php" class="cart">Cart <span><?php echo $row_count; ?></span> </a>

   </div>

</header>