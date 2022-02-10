<?php

// require("config.php");
// require("generalfunction.php");

class Stage
{

     
//variables
 private $connection; 

//functions

// 0)
    public function __construct()
    {
       $this->connection = new mysqli(DBHOST,NAME,PASS,DBNAME);
    }

//Stage 0
// get_all_S0()

    public function get_all_S0()
    {   
        
     $result = $this->connection->query("SELECT * FROM `stage0` ");

       if($result->num_rows >0)
       {
           $S0 = array();
           while( $row = $result->fetch_assoc() )
           {
               $S0[] = $row;
           }
           return $S0;
       }

       return null ; 
    }


// stage1 
   // get_all_s1_by_s0_id
    public function get_all_s1_by_s0_id($id)
    {
        $sql = "SELECT * FROM `stage1` WHERE `S0_id` = $id ";
        $result = $this->connection->query($sql);
        if($result->num_rows >0)
        {
            $S1 = array();
            while( $row = $result->fetch_assoc() )
            {
                $S1[] = $row;
            }
            return $S1;
        }
 
        return null ; 
    }

 // stage2 
   // get_all_s2_by_s1_id   
   public function get_all_s2_by_s1_id($id)
   {
       $sql = "SELECT * FROM `stage2` WHERE `S1_id` = $id ";
       $result = $this->connection->query($sql);
       if($result->num_rows >0)
       {
           $S2 = array();
           while( $row = $result->fetch_assoc() )
           {
               $S2[] = $row;
           }
           return $S2;
       }

       return null ; 
   }


    // stage3
   // get_all_s3_by_s2_id   
   public function get_all_s3_by_s2_id($id)
   {
       $sql = "SELECT * FROM `stage3` WHERE `S2_id` = $id ";
       $result = $this->connection->query($sql);
       if($result->num_rows >0)
       {
           $S3 = array();
           while( $row = $result->fetch_assoc() )
           {
               $S3[] = $row;
           }
           return $S3;
       }

       return null ; 
   }



   // find locked topics in stage1 depending on current user level and current topic reqired level
   public function check_if_s1_topic_locked($user_score,$s0_id)
   {
       $locked_topics = array();
      $s1_topics =  $this->get_all_s1_by_s0_id($s0_id);
  
      for($i =0 ; $i < count($s1_topics); $i++)
      {
         $topic_score = $s1_topics[$i]['required_level'];
         $topic_id = $s1_topics[$i]['id'];
          if($user_score >= $topic_score)
            $locked_topics[$topic_id] = "unlocked";
          else
             $locked_topics[$topic_id] = "locked";
      }
      return $locked_topics;

   }

//destruct
    public function __destruct()
    {
    $this->connection->close();
    }


}

// testing
//  $obj = new Stage();
// $result=$obj->check_if_s1_topic_locked(0,4);

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