<?php
	include_once("../include/class.mysqldb.php");
	include_once("../include/config.inc.php");	
	include_once('../config/routeros_api.class.php');			
	include_once('conn.php');
	
	echo "<meta charset='utf-8'>" ;	
	$name=$_REQUEST['name'];
	$session=$_REQUEST['session'];
	$idle=$_REQUEST['idle'];	
	$use=$_REQUEST['use'];	
	$limit=$_REQUEST['limit'];	
	$keep=$_REQUEST['keep'];
	$auto=$_REQUEST['auto'];
	$list=$_REQUEST['address'];
	$uptime=$_REQUEST['uptime'];
	$login="{:local date [ /system clock get date ];:local time [ /system clock get time ];:local uptime (".$uptime.");:if ( [ /ip hotspot user get \$user comment ] = \"\" ) do={[ /ip hotspot user set \$user comment=\$date];[/system scheduler add disabled=no interval=\$uptime name=\$user on-event= \"[ /ip hotspot user set \$user disable=yes ];[/ip hotspot active remove [find where user=\$user]];[/sys sch re \$user]\" start-date=\$date start-time=\$time]; }}";


	
	
	if($name != ""){
		$sql="SELECT pro_name FROM mt_profile WHERE pro_name='".$name."'";
		$query=mysql_query($sql);
		$rows=mysql_num_rows($query);
		
		if($rows>0){
			echo "<script>alert('User profile with such name already exists.')</script>";
			echo "<script>window.history.back()</script>";
		}else{
			mysql_query("INSERT INTO mt_profile VALUE('".$name."','".$session."','".$idle."','".$keep."','".$auto."','".$uptime."','".$use."','".$limit."','".$list."',NOW())");
			$ARRAY = $API->comm("/ip/hotspot/user/profile/add", array(
									"name" => $name,
									"session-timeout" => $session,
									"idle-timeout" => $idle,
									"keepalive-timeout" => $keep,
									"keepalive-timeout" => $auto,
									"shared-users" => $use,
									"rate-limit" => $limit,
									"address-list" => $list,
									"on-login" => $login
								));		
			echo "<script>alert('Save Done')</script>";
			echo "<meta http-equiv='refresh' content='0;url=index.php?opt=profile' />";
			exit;
		}
	}
?>