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

if(isset($_GET['quiz_id']) )
{
    $s0_id =  $_GET['s0_id'];
    $quiz_id = $_GET['quiz_id'];
    $quiz_title = $_GET['article'];
    $article_id = $_GET['article_id'];
    //get s2 data from db 
    $quiz_obj = new Quiz();
    $res1 = $quiz_obj->get_question_by_quiz_id( $quiz_id);
    // echo"<pre>";
    // print_r($res1);
    // exit();
    include("template/loggedinHeader.html");
    include("template/quizonly.html");
    for ($i =0; $i<count($res1); $i++)
    {
      $question =  $res1[$i]['question_text'];
      $answers = array();
      $answers[0] =  $res1[$i]['answer1_text'];
      $answers[1] =  $res1[$i]['answer2_text'];
      $answers[2] =  $res1[$i]['answer3_text'];
      $answers[3] =  $res1[$i]['right_answer_text'];
    // to change answers pattern
      shuffle($answers);
      $a1 = array_pop($answers);
      $a2 = array_pop($answers);
      $a3 = array_pop($answers);
      $a4 = array_pop($answers);
      echo "
      <div class='question'>
          <h3>$question</h3>
          <div class='answer'>
          <div>
              <input type='radio' name='question-$i-answers' id='question-$i-answers-A' value='$a1' />
              <label> A) $a1  </label>
          </div>
          <div>
              <input type='radio' name='question-$i-answers' id='question-$i-answers-B' value='$a2' />
              <label> B) $a2  </label>
          </div>
          <div>
              <input type='radio' name='question-$i-answers' id='question-$i-answers-C' value='$a3' />
              <label> C) $a3 </label>
          </div>
          <div>
              <input type='radio' name='question-$i-answers' id='question-$i-answers-D' value='$a4' />
              <label> D) $a4 </label>
          </div>                                  
          </div>
      
      </div>";


    }

        // echo $s0id." - ".$title." - ".$image_title." - ".$statues." - \n";
        echo "
        <input type = 'hidden' value = '$article_id' name ='article_id'/>
        <input type = 'hidden' value = '$s0_id' name ='s0_id'/>
        <input type = 'hidden' value = '$quiz_id' name ='quiz_id'/>
        
        <input type='submit' value='Submit' name='submit' class='submitbtn' />
        </div>
        </form>
        </div>
        </section>";
    include("template/footer.html");
}












