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
try {
  $accessToken = $helper->getAccessToken();
} catch(Facebook\Exceptions\FacebookResponseException $e) {
  // When Graph returns an error
  echo 'Graph returned an error: ' . $e->getMessage();
  exit;
} catch(Facebook\Exceptions\FacebookSDKException $e) {
  // When validation fails or other local issues
  echo 'Facebook SDK returned an error: ' . $e->getMessage();
  exit;
}

if (isset($accessToken)) {
  // Logged in!
  $_SESSION['facebook_access_token'] = (string) $accessToken;

  // Now you can redirect to another page and use the
  // access token from $_SESSION['facebook_access_token']

  $response = $fb->get('/me?fields=id,name,gender,email,link', $accessToken);

  $user = $response->getGraphUser();
  echo'<pre>';
  print_r($user);
  echo'</pre>';

  echo 'ID: ' . $user['id'];
  echo 'Name: ' . $user['name'];
  echo 'Gener: ' . $user['gener'];
  echo 'Email: ' . $user['email'];
  echo 'Link: ' . $user['link'];

}
?>