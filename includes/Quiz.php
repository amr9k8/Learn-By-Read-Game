<?php

// require("config.php");
// require("generalfunction.php");

class Quiz
{

     
//variables
 private $connection; 

//functions

// 0)
    public function __construct()
    {
       $this->connection = new mysqli(DBHOST,NAME,PASS,DBNAME);
    }


//1) get quiz id from an article 
    public function get_quiz_id($article_id)
    {   
        
     $result = $this->connection->query("SELECT `quiz_id` FROM `article` WHERE `id` = $article_id ");
       if($result->num_rows >0)
       {
           $quiz_id = $result->fetch_assoc();
           return $quiz_id['quiz_id'];
       }

       return null ; 
    }

//2) get questions for a quiz
    public function get_question_by_quiz_id($quiz_id)
    {
        $result = $this->connection->query("SELECT * FROM `question` WHERE `quiz_id`= $quiz_id");
       
        if($result->num_rows >0)
        {
            $questions = array();
            while( $row = $result->fetch_assoc() )
            {
                $questions[] = $row;
            }
            return $questions;
        }
        return null ; 
    
    }

// 3) get quiz for an article 
public function get_quiz_by_article_id($article_id)
{
    $quiz_id = $this->get_quiz_id($article_id);
    $questions = $this->get_question_by_quiz_id($quiz_id);
    return $questions;
}



// 4) validate answer and get score 
public function get_quiz_score($article_id,$answers)
{
    $questions = $this->get_quiz_by_article_id($article_id);
    $score = 0;
    $statues = "failed";
    for($i=0;$i<count($questions);$i++ )
    {
        $correct_answer  = $questions[$i]['right_answer_text']; 
        $user_answrer = $answers[$i];
        if( $correct_answer ==    $user_answrer )
        {
            $score ++;
        }
    }
    if ( ($score/count($questions) )*100 >= 50 )
        $statues = "passed";
    $result = array();
    $result['score'] = $score;
    $result['total'] = count($questions);
    $result['percent'] = ($score/count($questions) )*100 ;
    $result['statues'] = $statues;
    return $result;
}

//get current score of stage 0 of an user
public function get_current_score ($U_id,$S0_id)
{
    $sql = "SELECT `passed_quizzes` FROM `quiz_progress` WHERE `user_id` =$U_id AND `S0_id`= $S0_id ";
    $result = $this->connection->query($sql);
    if($result->num_rows >0)
    {
        $score = $result->fetch_assoc();
        return $score['passed_quizzes'];
    }

    return null ; 

}

public function get_current_score2 ($U_id,$S0_id)
{
    $sql = "SELECT COUNT(*) AS Levels FROM `quiz_progress` WHERE `user_id` =$U_id AND `S0_id`= $S0_id ";
    $result = $this->connection->query($sql);
    if($result->num_rows >0)
    {
        $score = $result->fetch_assoc();
        return $score['Levels'];
    }

    return null ; 

}
public function quiz_passed_increament2($U_id,$S0_id,$quiz_id)
{
    $sql = "INSERT INTO `quiz_progress`(`user_id`, `S0_id`,  `quiz_id`) VALUES ( $U_id  , $S0_id , $quiz_id) ";
    $this->connection->query($sql);
    if($this->connection->affected_rows >0 )
        return true ;
    return false ;
}


// level up if passed quiz
public function quiz_passed_increament($U_id,$S0_id)
{
    $current_score = $this-> get_current_score($U_id,$S0_id);
    $current_score++;
    $sqll = "UPDATE `quiz_progress` SET `passed_quizzes`= $current_score  WHERE `user_id`=$U_id AND`S0_id`= $S0_id ";
    $this->connection->query($sqll);
    if($this->connection->affected_rows >0 )
        return true ;
    return false ;
}

//destruct
    public function __destruct()
    {
        $this->connection->close();
    }


}

// testing
//  $obj = new Quiz();
// $result=$obj->quiz_passed_increament(1,4);
// // // $result=$obj->get_following_by_id(4);
// echo "<pre>";
// print_r($result);

// $id = array(1,2,3,4,5);
// $res1=$obj->get_followers_by_id(2);
// $res2=$obj->get_following_by_id(2);
// echo "followers : <pre>";
// print_r($res1);
// echo " followings: <pre>";
// print_r($res2);