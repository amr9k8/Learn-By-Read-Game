<?php 
require("includes/System.php");
session_start();// get data of logged in user
checkLogin();

// get user data from db
$user_id = $_SESSION['user']['id'];
$user_obj = new User();
$res = $user_obj->get_user_by_id($user_id);
$nickname = $res['nickname'];
$email = $res['email'];

if(isset($_GET['s1_id']) )
{
    $s1_id = $_GET['s1_id'];
    $s0_id = $_GET['s0_id'];
    $topic1_title = $_GET['topic1'];
    //get s2 data from db 
    $stage_obj = new Stage();
    $res1 = $stage_obj->get_all_s2_by_s1_id( $s1_id);
    // echo"<pre>";
    // print_r($res1);
    // exit();
    include("template/loggedinHeader.html");
    include("template/stage2only.html");
    for ($i =0; $i<count($res1); $i++)
    {
    $s1id =  $res1[$i]['id'];
    $title =  $res1[$i]['title'];
    $image_title =  $res1[$i]['image_title'];
    $available =   $res1[$i]['available'];
    // echo $s0id." - ".$title." - ".$image_title." - ".$statues." - \n";
    echo " 
    <div class='sec2-info'>
    <div class='imgsec2'>
        <a title='anatomy' href='stage2.php?s2_id=$s1id'><img src='template/assets/images/$image_title' width='550' ></a>";
       
    if($available == 1){
        echo "
        <div class='layout'>
        <a title='anatomy' href='stage3.php?s0_id=$s0_id&s2_id=$s1id&topic1=$topic1_title&topic2=$title'><h1 style='color: green;'>Unlocked</h1></a>
        </div>
        ";
    }
    else {
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
}



