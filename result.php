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
if(isset($_POST['submit']))  
{
    $quiz_obj = new Quiz();
    $article_id = $_POST['article_id'];
    $quiz_id = $_POST['quiz_id'];
    $s0_id = $_POST['s0_id'];
    $answers = array();
    $answers[0] = $_POST['question-0-answers'];
    $answers[1] = $_POST['question-1-answers'];
    $answers[2] = $_POST['question-2-answers'];
    $answers[3] = $_POST['question-3-answers'];
    $res1 = $quiz_obj->get_quiz_score( $article_id,$answers);
    // echo"<pre>";
    // print_r($res1);
    // exit();
    $percent = $res1['percent'];
    $statues = $res1['statues'];
    $score = $res1['score'];
    $total = $res1['total'];

    $res2 = $quiz_obj->get_current_score2($user_id ,$s0_id );
    if($statues == "passed")
        $quiz_obj->quiz_passed_increament2($user_id ,$s0_id ,$quiz_id);
    
    include("template/loggedinHeader.html");
    include("template/quizresultonly.html");
  
}