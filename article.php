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

if(isset($_GET['s3_id']) )
{
    $s3_id = $_GET['s3_id'];
    $s0_id = $_GET['s0_id'];
    $topic1_title = $_GET['topic1'];
    $topic2_title = $_GET['topic2'];
    $topic3_title = $_GET['topic3'];
    //get s2 data from db 
    $article_obj = new Article();
    $res1 = $article_obj->get_article_content( $s3_id);
    // echo"<pre>";
    // print_r($res1);
    // exit();
    $article_id =  $res1['id'];
    $article_title =  $res1['title'];
    $a_title = urlencode($article_title);
    $article_img =  $res1['image_title'];
    $article_desc =  $res1['description'];
    $article_paragraph=  $res1['paragraph'];
    $article_date=  $res1['publish_date'];
    $creator_id=  $res1['creator_id'];
    $quiz_id=  $res1['quiz_id'];
    include("template/loggedinHeader.html");
    include("template/articleonly.html");

    // echo $s0id." - ".$title." - ".$image_title." - ".$statues." - \n";

include("template/footer.html");
}








