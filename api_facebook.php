<?php
session_start();
ini_set('display_errors', 1);
require_once __DIR__ . '/src/Facebook/autoload.php';

use Facebook\FacebookSession;
use Facebook\FacebookRequest;
use Facebook\GraphUser;
use Facebook\FacebookRedirectLoginHelper;


$fb = new Facebook\Facebook([
  'app_id' => '821192431395085',
  'app_secret' => 'c35a524cc4443b3cb7d17ba2d547f63c',
  'default_graph_version' => 'v2.5',
]);

$helper = $fb->getRedirectLoginHelper();

$permissions = ['email', 'user_likes']; // optional

$loginUrl = $helper->getLoginUrl('http://103.246.17.180/api_facebook-callback.php', $permissions);

echo '<a href="' . $loginUrl . '">Log in with Facebook!</a>';
?>