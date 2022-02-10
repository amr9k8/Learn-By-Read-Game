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

if(isset($_GET['s0_id']) )
{
    $s0_id = $_GET['s0_id'];
    //get s1 data from db 
    $stage_obj = new Stage();
    $res1 = $stage_obj->get_all_s1_by_s0_id( $s0_id);
    // echo"<pre>";
    // print_r($res1);
    // exit();

    //get current user score
    $quiz_object = new Quiz();
    $current_score = $quiz_object->get_current_score2($user_id,$s0_id);
    $locked = $stage_obj->check_if_s1_topic_locked($current_score,$s0_id);
    // echo"<pre>";
    // print_r($res1);
    // print_r($locked);
    // exit();
    include("template/loggedinHeader.html");
    include("template/stage1only.html");
    for ($i =0; $i<count($res1); $i++)
    {
    $s1id =  $res1[$i]['id'];
    $title =  $res1[$i]['title'];
    $image_title =  $res1[$i]['image_title'];
    $required_level =  $res1[$i]['required_level'];
    // echo $s0id." - ".$title." - ".$image_title." - ".$statues." - \n";
    echo " 
    <div class='sec2-info'>
    <div class='imgsec2'>
        <a title='anatomy' href='stage2.php?s1_id=$s1id'><img src='template/assets/images/$image_title' width='550' ></a>";
    if( $locked[$s1id] == "unlocked" )
    {
        echo "
        <div class='layout'>
        <a title='anatomy' href='stage2.php?s0_id=$s0_id&s1_id=$s1id&topic1=$title'><h1 style='color: green;'>Unlocked</h1></a>
        </div>
        ";
    }
    else if ( $locked[$s1id]  == "locked"   ) {
        echo "
            <div class='layout'>
                <h1>Level $required_level</h1>
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



