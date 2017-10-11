<?php
	# configuration for database
	$_config['database']['hostname'] = "localhost";
	$_config['database']['username'] = "stangapi_db";
	$_config['database']['password'] = "038444871";
	$_config['database']['database'] = "stangapi_db";
	
	# connect the database server
	$link = new mysqldb();
	$link->connect($_config['database']);
	$link->selectdb($_config['database']['database']);
	$link->query("SET NAMES 'utf8'");
	
	@session_start();
?>
