<?php

// require("config.php");
// require("generalfunction.php");

class Article
{

     
//variables
 private $connection; 

//functions

// 0)
    public function __construct()
    {
       $this->connection = new mysqli(DBHOST,NAME,PASS,DBNAME);
    }


    public function get_all_articles()
    {   
        
     $result = $this->connection->query("SELECT * FROM `article` ");

       if($result->num_rows >0)
       {
           $articles = array();
           while( $row = $result->fetch_assoc() )
           {
               $articles[] = $row;
           }
           return $articles;
       }

       return null ; 
    }

    public function get_article_id_from_s3($s3_id)
    {
        $result = $this->connection->query("SELECT `article_id` FROM `s3_articles`  WHERE `s3_id`= $s3_id");
       
        if($result->num_rows >0)
        {
            $articles_id = array();
            while( $row = $result->fetch_assoc() )
            {
                $articles[] = $row;
            }
            return $articles[0]['article_id'];
        }
 
        return null ; 
    
    }
    public function get_article_content($s3_id)
    {   
     $artilce_id = $this->get_article_id_from_s3($s3_id);
     if ($artilce_id)
     {
      
        $result = $this->connection->query("SELECT * FROM `article` WHERE `id` = $artilce_id");
        if($result->num_rows >0)
       {
           $article = array();
           while( $row = $result->fetch_assoc() )
           {
               $article[] = $row;
           }
           return $article[0];
       }
     }
       

       return null ; 
    }





//destruct
    public function __destruct()
    {
    $this->connection->close();
    }


}

// testing
//  $obj = new Article();
// $result=$obj->get_article_content(2);
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