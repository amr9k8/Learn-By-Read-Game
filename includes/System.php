<?php 
define('DS',DIRECTORY_SEPARATOR); // get dir seprator dyanmically which is "/" in windows  or "\" in linux
define('ROOT' , dirname(__DIR__));   // get root folder which is Mo3taLearn

define('INCLUDES' , ROOT.DS.'includes');   // get includes folder 

define('CONFIG' , INCLUDES.DS.'config.php');   
define('USER' , INCLUDES.DS.'User.php');   
define('STAGE' , INCLUDES.DS.'Stage.php');  
define('ARTICLE' , INCLUDES.DS.'Article.php'); 
define('QUIZ' , INCLUDES.DS.'Quiz.php'); 
define('FUNCTIONS' , INCLUDES.DS.'generalfunction.php'); 


require(CONFIG);
include(USER);
include(STAGE);
include(ARTICLE);
include(QUIZ);
include(FUNCTIONS);