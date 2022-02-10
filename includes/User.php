<?php

// require("config.php");
// require("generalfunction.php");

class User
{

     
//variables
 private $connection; 

//functions

// 0)
    public function __construct()
    {
       $this->connection = new mysqli(DBHOST,NAME,PASS,DBNAME);
    }

// 1)
    public function get_all_users($q="")
    {   
        
     $result = $this->connection->query("SELECT * FROM `user` $q");

       if($result->num_rows >0)
       {
           $users = array();
           while( $row = $result->fetch_assoc()  )
           {
               $users[] = $row;
           }
           return $users;
       }

       return null ; 
    }


// 2)
    public function get_user_by_id($id)
    {
        $result = $this->get_all_users(" WHERE id = '$id' ");
        if ($result)
        {
        return $result[0];
        }
        return null;
    }

// 3)
    public function search_user($keyword)
    {
        
        $result = $this->get_all_users(" WHERE nickname ='$keyword' OR email = '$keyword' OR nickname LIKE '%$keyword' OR nickname LIKE '$keyword%' ");
        return $result;
    }


// 4)
    public function login($username,$password)
    {
        $result = $this->get_all_users(" WHERE email ='$username' AND password = '$password'  ");
        if ($result)
        return $result[0];

        return 0;
    }


// 5)
    public function register_user ($username,$email,$password)
    {
        if ( strlen($username) > 0 && strlen($email) > 0 && strlen($password) > 0 )
        {      
                $this->connection->query(" INSERT INTO `user`
                ( `nickname`,`email`,`password`) 
                VALUES 
                ('$username','$email','$password')   ");

                if($this->connection->affected_rows >0 )
                    return true ;
        }

            return false ;
    }
    

// genral update function
    public function update_user_general ($id,$extra="")
    {
        $this->connection->query(" UPDATE `user`
         SET $extra WHERE id = $id  ");

        if($this->connection->affected_rows > 0 )
            return true ;
        return false ;
    }


// 6)

//________________________________________________________________________    
        public function update_user_name ($id,$username)
        {
            $this->update_user_general($id, " `nickname`= '$username' ");
        }
//________________________________________________________________________  
       public function update_user_pass ($id,$password)
       {
           $this->update_user_general($id," `password`= '$password' ");
       }     
//________________________________________________________________________  
        public function update_user_email ($id,$email)
        {
            $this->update_user_general($id," `email`= '$email' ");
        }    
//________________________________________________________________________  
        public function update_user_avatar ($id,$avatar)
        {
            $this->update_user_general($id," `avatar`= '$avatar' ");
        }    
//________________________________________________________________________                 
            
        public function update_all_data ($id,$username,$email,$password,$avatar)
        {
            if (strlen($username) > 0 )
            $this->update_user_name($id,$username);
            
            if (strlen($email) > 0 )
            $this->update_user_email($id,$email);

            if (strlen($password) > 0 )
            $this->update_user_pass($id,$password);

            if (strlen($avatar) > 0 )
            $this->update_user_avatar($id,$avatar);
        }           
//________________________________________________________________________       



// 7)
public function get_followers_by_id($id)
{
        $sql = " SELECT `following_account` FROM `follows` WHERE `account_id_to_follow` = $id  ";
        $result =  $this->connection->query($sql);
                    
            if($result->num_rows >0)
            {  
                $followers = array();
                
                while( $row = $result->fetch_row()  )
                    {
                        $followers[] = $row; 
                    }
                return organize_array($followers) ; 
            }
            return 0;  
         
}


// 8)
    public function get_following_by_id($id)
    {
            $sql = "  SELECT * FROM `follows` WHERE `following_account` = $id " ;
            $result =  $this->connection->query($sql);
            if($result->num_rows >0)
                {   $followings = array();
                    while( $row = $result->fetch_row()  )
                    { 
                        $followings[] = $row; 
                    }
                    return organize_array($followings);
                }
                return 0;  
    }

 
// 9)
    public function count_followers($id)
    {
         $sql = " SELECT COUNT(*) FROM `follows` WHERE `account_id_to_follow` = $id ";
         $result1 =  $this->connection->query($sql);
         if($result1->num_rows >0)
            {    
               $followersNumber = $result1->fetch_row()  ;

               return $followersNumber;
            }
             return 0;
    }

// 10)
    public function count_following($id)
    {
        $sql = " SELECT COUNT(*) FROM `follows` WHERE `following_account` = $id ";
        $result1 =  $this->connection->query($sql);
        if($result1->num_rows >0)
        {    
            $followingNumber = $result1->fetch_row()  ;

            return $followingNumber;
        }        
        return 0;     
    }

    

    public function follow_user($myid,$otherid)
    {  

       if ( $myid &&  $otherid ) {
           $sql = "INSERT INTO `follows`(`account_id_to_follow`, `following_account`) VALUES ($otherid,$myid )";
           $this->connection->query($sql);
           if($this->connection->affected_rows >0 )
               return true ;
       }
           return false ;
    }


    public function unfollow_user($myid,$otherid)
    {  
       if ( $myid &&  $otherid ) {
           $sql = "DELETE FROM `follows` WHERE  `account_id_to_follow` =  $otherid AND `following_account` = $myid  ";
           $this->connection->query($sql);
           if($this->connection->affected_rows >0 )
               return true ;
       }
       
         //  echo $this->connection->error;
           return false ;
    }






//destruct
    public function __destruct()
    {
    $this->connection->close();
    }


}

// testing
//  $obj = new User();
// $result=$obj->search_user("adel");
// // $result=$obj->get_following_by_id(4);
// echo "<pre>";
// print_r($result);

// $id = array(1,2,3,4,5);
// $res1=$obj->get_followers_by_id(2);
// $res2=$obj->get_following_by_id(2);
// echo "followers : <pre>";
// print_r($res1);
// echo " followings: <pre>";
// print_r($res2);