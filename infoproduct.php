<?php include "connect.php" ;

session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link href='sty/search.css' rel='stylesheet'></link>
    <link href='sty/index.css' rel='stylesheet'></link>
    <title>Search</title>

</head>
<body>
<div class="content">
<div class="top">
    <div class="logo"><a href="index.php"><img src="img/logo.png" alt="logo" width="306" height="108" ></a></div>
    <form action="search_page.php?search=" method ="get">
        <div class="s-box">
            <img src ="img/search.png" class="s-icon">
            <input type="text" name="search" id="search" placeholder="Search">
            <input type="submit" hidden>
        </div>
    </form>
    <?php 
    if (isset($_SESSION['admin_login'])) {
        $admin_id = $_SESSION['admin_login'];
        $stmt = $pdo->query("SELECT * FROM users WHERE id = $admin_id");
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
    ?>
    <ul>
        <li> <h3><?php echo "Admin ". $row['firstname'] . ' ' ?></h3> </li>
        <li> <a href="admin/admin.php">Admin Tools</a> </li>
        <li> <a style="color:red;" href="logout.php">Logout</a> </li>
    </ul>
    <?php
    } else if (isset($_SESSION['user_login'])) {
        $user_id = $_SESSION['user_login'];
        $stmt = $pdo->query("SELECT * FROM users WHERE id = $user_id");
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
    ?>
    <ul>
        <div class="name_bar">
            <ul>
                <li class="furniture"><a href=""><h3><?php echo $row['firstname'] . ' ' . $row['lastname'] ?></a>
                    <ul>
                        <li> <a style="color:red;" href="History.php">History</a> </li>
                        <li> <a style="color:red;" href="Distributioncenter.php">Distribution</a> </li>
                        <li> <a style="color:red;" href="logout.php">Logout</a> </li>
                    </ul>
                </li>
            </ul>
        </div>
        <li> <a  href="cart.php?action=Check" class="a_tool">
                <?php 
                if(sizeof($_SESSION['cart'])==NULL){
                  echo 0;
                } else {
                  echo sizeof($_SESSION['cart']);
                }
                ?>
            <i class="fa-solid fa-cart-plus"></i></a> </li>
    </ul>
    <?php
    } else{
    ?>
        <ul>
            <li> <a href="signin.php">Log in</a></li>
            <li> / </li>
            <li> <a href="register.php">Register</a> </li>
        </ul>
    <?php } ?>
</div>
          <header >
                  <div class="top_bar">
                    <ul>
                      <li class="furniture"><a href="">Category</a>
                      <ul>
                        <li><a href='category.php?keyword=???????????????'>???????????????</a></li>
                        <li><a href='category.php?keyword=????????????'>????????????</li>
                        <li><a href='category.php?keyword=?????????????????????'>?????????????????????</a></li>
                        <li><a href='category.php?keyword=???????????????????????????'>???????????????????????????</a>
</li>
                      </ul>
                    </li>
                    
                    <li class="furniture"><a href="">Style</a>
                    <ul>
                      <li><a href="search_page.php?search=modern">modern</a></li>
                      <li> <a href="search_page.php?search=classic">classic</a> </li>
                      <li><a href="search_page.php?search=minimal">minimal</a></li>
                      <li><a href="search_page.php?search=vintage">vintage</a></li>
                    </ul>
                  </li>
            </ul>
          </div>
        </header>
        <style>
          div.history{
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 36px;
            color: gray;
            font-weight: bold; 
          }
          p{
            font-family: Verdana, Arial, Helvetica, sans-serif;
            font-size: 22px;
            color: gray;
            font-weight: bold; 
          } 
          table {
            border-color: #000; 
            border: 1px;
            border-collapse: collapse;
            font-size: large; 
            line-height: 24px; 
            font-family: Verdana, Arial, Helvetica, sans-serif; 
            margin: auto;

          }
          th { 
            border-top: 1px solid #777; 
            border-bottom: 1px solid #777; 
            background-color: black; 
            color: white;  
            text-align: left;  
          } 
          td { 
            border-bottom: 1px solid #BBB; 
            background-color: #EEE; 
            color: #000; 
          } 
          td, th { 
            padding: 0.2em 0.5em 0.2em 0.5em; 
          } 
          td+td, th+th { 
            border-left: 1px solid #BBB; 
          }
          body{
            text-align: center; 
          }
        </style>
        <body>
        <div class="history">Product</div>
        <p>????????????????????????????????????????????????</p>
          <table>
            <tr>
            <th>Product_ID</th>
            <th>Product_type</th>
            <th>Product_style</th>
            <th>Product_info</th>
            <th>Product_num</th>
            <th>Product_name</th>
            <th>Product_price</th>

            <tr>
    <?php
      $stmt = $pdo->prepare("SELECT * FROM product
      WHERE Product_ID LIKE ?;");
      
      $stmt->bindParam(1, $_GET["Product_ID"]); 
      $stmt->execute();

      while($row = $stmt->fetch()){ ?>
      <img src='img/<?=$row["Product_ID"]?>.jpg' width="250" height = "250"><br>
        <tr>
        <td><?=$row["Product_ID"]?><br></td>
        <td><?=$row["Product_type"]?><br></td>
        <td><?=$row["Product_style"]?><br></td>
        <td><?=$row["Product_info"]?><br></td>
        <td><?=$row["Product_num"]?><br></td>
        <td><?=$row["Product_name"]?><br></td>
        <td><?=$row["Product_price"]?><br></td>
        </tr>
        <?php }
      ?>
    </body>
</html>