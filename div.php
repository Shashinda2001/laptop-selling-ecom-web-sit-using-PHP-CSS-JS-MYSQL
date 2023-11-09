<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

 <section class="outboxx">

      <div class="boxx">

         <img src="img/lap1.png" alt="">

         <h1>name</h1>
         <div class="pbox">
<p>description</p>
</div>
         <h1>price</h1>

      </div>


         <div class="boxx">

         <img src="img/lap1.png" alt="">

        <h1>name</h1>
        <div class="pbox">
<p>description vsdvsdv dveav sdveve dvea</p>
</div>
        <h1>price</h1>

        </div>



        <div class="boxx">

        <img src="img/lap1.png" alt="">

        <h1>name</h1>
        <div class="pbox">
<p>description</p>
</div>
        <h1>price</h1>

        </div>


        <div class="boxx">

<img src="img/lap1.png" alt="">

<h1>name</h1>
<div class="pbox">
<p>description</p>
</div>
<h1>price</h1>

</div>


<div class="boxx">

<img src="img/lap1.png" alt="">

<h1>name</h1>


<div class="pbox">
<p>description</p>
</div>

<h1>price</h1>

</div>






 </section>


   
    
</body>
</html>


<!-- //////////////////////////////////// -->
<?php  

require 'db_connect.php';
?>

<section class="outboxx">


<?php  
$query_run=mysqli_query($db,"SELECT*FROM product");
if(mysqli_num_rows($query_run)>0){
        while($row=mysqli_fetch_assoc($query_run)){

           echo '
           <div class="boxx">

         <img src="images/bottle1.png" alt="">

         <h1>name</h1>
         <div class="pbox">
         <p>description</p>
         </div>
         <h1>price</h1>

      </div>
           
           ';

        }
}

?>


 </section>

