<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<!-- bottom nav---------------------------------------- -->
   
<nav class="bottom-navbar">

 

<a href="home_page.php" class="fa-solid fa-house"></a>
<a href="home_page.php#featured" class="fa-solid fa-list-ul"></a>
<a href="#home_page.php#arrivals" class="fa-solid fa-tag"></a>
<a href="home_page.php#reviews" class="fa-regular fa-comment"></a>
<a href="home_page.php#blogs" class="fa-brands fa-blogger"></a>
<?php

if(isset($_SESSION['user_id'])){
        $choose=mysqli_query($conn,"SELECT *FROM user_info WHERE uId='$id'");
        $row=mysqli_fetch_assoc($choose);

        $u=$row['email'];
        $p= $row['epassword'];

        $take=mysqli_query($conn,"SELECT *FROM normal_admin WHERE email='$u' and password='$p'");
        if(mysqli_num_rows($take)>0){
            echo'<a href="admin.php" class="fas fa-user-shield"></a>';  
    
        } 
                   
    }
        ?>

</nav>

    
    

     <!-- -----------------------------footer---------------------- -->
<section class="footer">

<div class="box-container">

    <div class="box">
        <h3>Our Locations</h3>
        <a href="#" ><i class="fa-solid fa-location-dot"></i>Galle</a>
        <a href="#"><i class="fa-solid fa-location-dot"></i>Ambalangoda</a>
        <a href="#"><i class="fa-solid fa-location-dot"></i>Matara</a>
         
    </div>

    <div class="box">
        <h3>Quick Links</h3>
        <a href="home_page.php"><i class="fa-solid fa-arrow-right"></i>Home</a>
        <a href="home_page.php#arrivals"><i class="fa-solid fa-arrow-right"></i>Arrivals</a>
        <a href="home_page.php#reviews"><i class="fa-solid fa-arrow-right"></i>Reviews</a>
        <a href="home_page.php#blogs"><i class="fa-solid fa-arrow-right"></i>Blogs</a> 
    </div>

    <div class="box">
        <h3>Extra Links</h3>
        <a href="#"><i class="fa-solid fa-arrow-right"></i>Account info</a>
        <a href="#"><i class="fa-solid fa-arrow-right"></i>Order Items</a>
        <a href="#"><i class="fa-solid fa-arrow-right"></i>Payment Methods</a>
        <a href="#"><i class="fa-solid fa-arrow-right"></i>Privacy Policy</a>
        <a href="#"><i class="fa-solid fa-arrow-right"></i>Our Services</a> 
    </div>

    <div class="box">
        <h3>Contact Info</h3>
         
        <a href="#"><i class="fa-solid fa-phone"></i>076-7189923</a>
        <a href="#"><i class="fa-solid fa-envelope"></i>shashindaadithya7@gmail.com</a>
    </div>

</div>
<div class="share">
    <a href="#" class="fa-brands fa-facebook"></a>
    <a href="#" class="fa-brands fa-whatsapp"></a>
    <a href="#" class="fa-brands fa-linkedin"></a>
    <a href="#" class="fa-brands fa-instagram"></a>
</div>
<div class="credit">All Rights Reserved</div>
</section>
<!-- footer section ends -->


</body>
</html>