<?php 
require("includes/System.php");
session_start();
have_session_check();
$error=''; 
if(isset($_POST['login']))
{
    $username = $_POST['email'];
    $password = $_POST['password'];
   
    $obj = new User();
    $result=$obj->login($username,$password);

    if($result && count($result)>0)  // not empty
    {

        $_SESSION['user']=$result;
        echo "<h1 style='text-align:center;background-color:green; color:white;margin-top:150px;'>Logged in succesfuly</h1>";
        header("Location:stage0.php");
    }
    else
    {
        echo "<h1 style='text-align:center;background-color:red; color:white;margin-top:150px;'>Wrong Username OR Password</h1>";
        $error="Wrong Username or Password";
    }
    
}

if(isset($_POST['register']))
{

    $username = $_POST['nickname'];
    $email = $_POST['email'];
    $password = $_POST['password'];
   
    $obj = new User();
    $result=$obj->register_user($username,$email,$password);
    // echo "<pre>";
    // print_r($_POST);
    // exit();
    if($result)  // true
    {


        $_SESSION['user']=$result;
        echo "<h1 style='text-align:center;background-color:green; color:white;margin-top:150px;'>Registerd  successfully,Please Login Now To Start</h1>";
       // header("Location:stage0.php");
    }
    else
    {
        echo "<h1 style='text-align:center;background-color:red; color:white;margin-top:150px;'>Wrong Username OR Password</h1>";
        $error="Failed To Register";
    }
    
}
include("template/header.html");
include("template/footer.html");
?>