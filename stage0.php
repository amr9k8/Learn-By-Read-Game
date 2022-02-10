<?php 
require("includes/System.php");
session_start();// get data of logged in user
checkLogin();

// get user data from db
$user_id = $_SESSION['user']['id'];
// echo "<pre>";
// print_r($_SESSION['user']);
// exit();
$user_obj = new User();
$res = $user_obj->get_user_by_id($user_id);

$nickname = $res['nickname'];
$email = $res['email'];

//get s0 data from db 
$stage_obj = new Stage();
$res1 = $stage_obj->get_all_S0();
include("template/loggedinHeader.html");
include("template/stage0only.html");
// print_r($res1);
// exit();
for ($i =0; $i<count($res1); $i++)
{
   $s0id =  $res1[$i]['id'];
   $title =  $res1[$i]['title'];
   $image_title =  $res1[$i]['image_title'];
   $statues =  $res1[$i]['statues'];
  // echo $s0id." - ".$title." - ".$image_title." - ".$statues." - \n";
  echo " 
  <div class='sec2-info'>
  <div class='imgsec2'>
    <a title='anatomy' href='stage1.php?s0_id=$s0id'><img src='template/assets/images/$image_title' width='550' ></a>";
   if($statues == 0)
   {
       echo "
       <div class='layout'>
       <h1>Comming Soon</h1>
     </div>
       ";
   }

 echo " </div>
  
  <div class='titelsec2'>
    <a href='#'> $title </a>
  </div>
  
  </div>
";  

}



echo "</section>  ";
include("template/footer.html");
