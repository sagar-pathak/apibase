<?php
require 'Slim/Slim.php';
\Slim\Slim::registerAutoloader();
$app = new \Slim\Slim();
$app->contentType('application/json');
$app->get('/schedule','getSchedule');
$app->get('/schedule/:groupNumber','getScheduleByGroup');
$app->get('/updates/:updateCode','updatesCheck');
$app->run();

function getSchedule(){
	echo 'testing..schedule.';
}
function getScheduleByGroup(){
	echo '';
}
function updatesCheck(){
	echo '';
}
?>