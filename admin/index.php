<?php
	session_start();
	if($_SESSION['APIUser'] == ''){
		echo "<meta http-equiv='refresh' content='0;url=login.php' />";
		exit(0);
	}
	unset($_SESSION['id']);
	require('../config/routeros_api.class.php');
	include("../include/class.mysqldb.php");
	include("../include/config.inc.php");	
	if(!empty($_GET['did'])){
		mysql_query("DELETE FROM mt_config WHERE mt_id='".$_GET['did']."'");
		echo "<meta http-equiv=\"refresh\" content=\"0;url=index.php\">";
		exit(0);
	}	
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta http-equiv="refresh" content="60">
    <meta name="author" content="">

    <title>Administrator</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

	 <!-- DataTables CSS -->
    <link href="../css/plugins/dataTables.bootstrap.css" rel="stylesheet">

    
    <!-- Custom CSS -->
    <link href="../css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

     <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">MikroTik API Hotspot System</a>
            </div>
            <!-- /.navbar-header -->

           
            <!-- /.navbar-top-links -->

           <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="index.php"><i class="fa fa-dashboard fa-fw"></i> Site Lists</a>
                        </li>
						<li>
                            <a href=""><i class="fa fa-user fa-fw"></i> Customers</a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="index.php?opt=cus_add">Add New</a>
                                </li>                               
                                <li>
                                    <a href="index.php?opt=cus_list">lists</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="index.php?opt=add_site"><i class="fa fa-wrench fa-fw"></i> Add Site</a>                                                 
                        </li> 
						<li>
                            <a href="index.php?opt=change_pass"><i class="fa fa-edit fa-fw"></i> Change Password</a>
                        </li>
						 <li>
                            <a href="logout.php"><i class="fa fa-sign-out fa-fw"></i> Logout</a>                                                 
                        </li> 
                    </ul>
            <!-- /.navbar-static-side -->
        </nav>        
		 <? if(!isset($_REQUEST['opt'])) { ?>
        <!-- Page Content -->
       <div id="page-wrapper">
           <br />
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Site Detail
                            <div class="pull-right">
                            <a href="index.php"><img src="../img/refresh.png" width="20" title="Refresh"></a>
                            </div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                            	<form name="site" action="" method="post">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>     
                                        	<th>No.</th> 
                                            <th>Site Name</th> 
                                            <th>Location</th>                                                                       	
                                            <th>CPU</th>                                           
                                            <th>RAM</th>
                                            <th>HDD</th>                                            
                                            <th>Status</th>
                                   			<th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                            
												<?php
													$sql=mysql_query("SELECT * FROM mt_config");
													$no=0;
													while($result=mysql_fetch_array($sql)){
													$no++;
													$API = new routeros_api();				
													$API->debug = false;
													if($API->connect($result['mt_ip'], $result['mt_user'], $result['mt_pass'])){																			
														$ARRAY = $API->comm("/system/resource/print");	
														$ram =	$ARRAY['0']['free-memory']/1048576;
														$hdd =	$ARRAY['0']['free-hdd-space']/1048576;												
													}																												
													echo "<tr>";
														echo "<td>".$no."</td>";																																							
														echo "<td>".$result['mt_name']."</td>";														
														echo "<td>".$result['mt_location']."</td>";
														echo "<td>";
														if($ARRAY['0']['cpu-load']==""){ 
															echo "-";
														}else{
															echo $ARRAY['0']['cpu-load']."%";															 							
														}
														echo "</td>";
														echo "<td>".round($ram,1)." MB</td>";
														echo "<td>".round($hdd,1)." MB</td>";
														echo "<td>";
															if($API->connect($result['mt_ip'], $result['mt_user'], $result['mt_pass'])){
																echo "<button type=\"button\" class=\"btn btn-success\"><i class=\"fa fa-check\"></i> CONNECT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>";
																$conn="connect";	
															}else{
																echo "<button type=\"button\" class=\"btn btn-danger\"><i class=\"fa fa-times\"></i> DISCONNECT</button>";
																$conn="disconnect";
															}																	
														echo "</td>";	
																											
														echo "<td><a href='../site/site_conn.php?id=".$result['mt_id']."&conn=".$conn."'><img src=\"../img/enter.png\" width=\"20\" title=\"Enter To Site\"></a>
														<a href='index.php?opt=edit_site&id=".$result['mt_id']."'><img src=\"../img/edit.png\" width=\"20\"   title=\"Edit Site\"></a>
														<a href='javascript:void(0)' onClick=\"JavaScript:if(confirm('คุณต้องการลบหรือไม่!!!')==true)
                {window.location='index.php?did=".$result['mt_id']."'}\"><img src=\"../img/delete.png\" width=\"20\" title=\"Delete Site\"></a>";												
													echo "</td>";
													echo "</tr>";
													}
												?>
                                                                                                                                                                              
                                    </tbody>
                                </table>
                               </form>
                            </div>
                           
        </div>
        <!-- /#page-wrapper -->

    </div>
<!-- /#wrapper -->
		 <?php
				 } else { 
            		include($_REQUEST['opt'] . ".php"); 
                 } 
          ?>
    <!-- jQuery Version 1.11.0 -->
    <script src="../js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../js/plugins/metisMenu/metisMenu.min.js"></script>

	 <!-- DataTables JavaScript -->
    <script src="../js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="../js/plugins/dataTables/dataTables.bootstrap.js"></script>
    
    <!-- Custom Theme JavaScript -->
    <script src="../js/sb-admin-2.js"></script>
    
    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').dataTable();
    });
    </script>   

</body>

</html>

