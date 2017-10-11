<?php
	session_start();
	ob_start();
	include("../include/class.mysqldb.php");
	include("../include/config.inc.php");	
	if($_SESSION['APIUser'] == '' and $_SESSION['EmpUser']==''){
		echo "<meta http-equiv='refresh' content='0;url=../logout.php' />";
		exit();		
	}else if($_SESSION['id'] == ''){
		echo "<meta http-equiv='refresh' content='0;url=../index.php' />";
		exit();
	}

?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
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
                            <a href="index.php"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>                         
                                               
                        <li>
                            <a href=""><i class="fa fa-user fa-fw"></i> Users</a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="index.php?opt=add_user">Add New(One)</a>
                                </li>
                                <li>
                                    <a href="index.php?opt=add_genuser">Add New(Many)</a>
                                </li>
                                <li>
                                    <a href="index.php?opt=user_list">lists</a>
                                </li>
                            </ul>
                        </li>
                       <li>
                            <a href=""><i class="fa fa-edit fa-fw"></i> Profiles</a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="index.php?opt=add_profile">Add Profiles</a>
                                </li>                                
                                <li>
                                    <a href="index.php?opt=profile">Profiles lists</a>
                                </li>
                            </ul>
                        </li>
                         <li>
                            <a href="index.php?opt=useronline"><i class="fa fa-bar-chart-o fa-fw"></i> User Online</a>                                                 
                        </li>
                        <li>
                            <a href="logoff.php"><i class="fa fa-desktop"></i> Site Manage</a>                                                 
                        </li>
                    </ul>
            <!-- /.navbar-static-side -->
        </nav>
		 <? if(!isset($_REQUEST['opt'])) { ?>
        <!-- Page Content -->
		<?php
			include('../config/routeros_api.class.php');	
			include("conn.php");
			$ARRAY = $API->comm("/system/resource/print");	
			$ram =	$ARRAY['0']['free-memory']/1048576;
			$hdd =	$ARRAY['0']['free-hdd-space']/1048576;	
		?>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>

                     <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-sign-in fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" id="cpu"></div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a>
                            <div class="panel-footer">
                                <span class="pull-left">CPU Load <?php echo " ".$ARRAY['0']['cpu-load']."%"; ?></span>                                
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-sliders fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" id="memory"></div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a>
                            <div class="panel-footer">
                                <span class="pull-left">Free Memory <?php echo " ".round($ram,1)."MB"; ?></span>                                
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" id="hdd"></div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a>
                            <div class="panel-footer">
                                <span class="pull-left">Free HDD <?php echo " ".round($hdd,1)."MB"; ?></span>                                
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-spinner fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge" id="uptime"></div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a>
                            <div class="panel-footer">
                                <span class="pull-left">Uptime <?php echo " ".$ARRAY['0']['uptime']; ?></span>                               
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
                </div>
                <!-- /.col-lg-12 -->


            </div>
            <!-- /.row -->
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

