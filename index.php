<?php
header("Content-Type: text/html; charset=utf-8");
define("ROOT", realpath(dirname(__FILE__)));
require (ROOT . "/vendor/autoload.php");
$router = new Core\Router\Router();
$router->match(isset($_SERVER["REQUEST_URI"]) ? $_SERVER["REQUEST_URI"] : "");
$router->execute()->dispatch()->output();
?>
