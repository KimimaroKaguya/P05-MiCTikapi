<?php
	session_start();
	if($_SESSION['EmpUser'] == ''){
		echo "<meta http-equiv='refresh' content='0;url=login.php' />";
		exit(0);
	}	
	unset($_SESSION['id']);
	require('config/routeros_api.class.php');
	include("include/class.mysqldb.php");
	include("include/config.inc.php");	
	if(!empty($_GET['did'])){
		mysql_query("DELETE FROM mt_config WHERE mt_id='".$_GET['did']."' AND mt_owner = '".$_SESSION['EmpUser']."'");
		echo "<meta http-equiv=\"refresh\" content=\"0;url=index.php\">";
		exit(0);
	}	
?>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Mikrotik API</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="../plugins/bootstrap/cssUI/bootstrap.min.css">
    <!-- size ui -->
    <!-- Font Awesome fa fa icon-->
    <link href="../assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="../distUI/css/AdminLTE.min.css">
    <!-- ui index -->

    <!-- sweetalert STYLES-->
    <script src="../plugins/sweetalert/dist/sweetalert2.min.js"></script>
    <!-- alert -->
    <link rel="stylesheet" type="text/css" href="../plugins/sweetalert/dist/sweetalert2.css" />
    <!-- alert -->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css"> -->
    <!--link Ionicons dashboad-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

    <!-- <link rel="stylesheet" href="../plugins/datatable/dataTables1.10.15.bootstrap.min.css"> -->
    <!--ตาราง ค้นหา up-down-->
    <!-- <link href="../plugins/bootstrap/dist/css/bootstrap.css" rel="stylesheet" /><!--ตาราง ค้นหา  สวย -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- click check box +ตาราง ค้นหา  -->
    <link href="../assets/css/plugins/dataTables.bootstrap2.css" rel="stylesheet" />
    <!--ใช้ตารางนี้ ค้นหา จัดขอบ -->
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../distUI/css/skins/_all-skins-min.min.css">
    <!-- ui index -->
    <!-- GOOGLE FONTS-->
    <!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' /> -->
    <link href="../assets/css/custom3.css" rel="stylesheet" />
    <link href="../img/winbox-logo.png" rel="shortcut icon" type="image/x-icon" />
  </head>

  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <header class="main-header">
        <!-- Logo -->
        <a href="index.php" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>M</b>T</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Mikrotik</b>API</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
              <span class="sr-only">Toggle navigation</span>
          </a>
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">

              <!-- Control Sidebar Toggle Button -->
              <li>
                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
              </li>
            </ul>
          </div>
        </nav>
      </header>

      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <!-- <img src="../distUI/img/user2-160x160.jpg" class="img-circle" alt="User Image"> -->
              <img src="../img/winbox.png" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p>
                <?php echo ($_SESSION['APIUser']); ?>
                <?php echo ($_SESSION['EmpUser']); ?>
              </p>
              <a href="#" data-toggle="modal" data-target="#Detail" data-toggle="tooltip" data-placement="top" title="ดูรายละเอียด"><i class="fa fa-circle"<?php echo $security_account;?>></i> Online</a>
            </div>
          </div>
          <!-- search form -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="page" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <li class="active treeview">
              <li>
                <a href="index.php"><i class="fa fa-dashboard fa-fw"></i> Site Lists</a>
              </li>
              <li>
                <a href="index.php?opt=change_pass"><i class="fa fa-edit fa-fw"></i> Change Password</a>
              </li>
              <li>
                <a href="logout.php"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
              </li>

          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <div class="content-wrapper">

        <section class="content-header">
          <h1>
            Dashboard
            <small>Control panel</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol>
        </section>
        <!--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
        <!-- Main content -->
        <section class="content">
          <? if(!isset($_REQUEST['opt'])) { ?>
            <!-- Small boxes (Stat box) -->
            <div class="row">
              <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-aqua">
                  <div class="inner">
                    <h3>150</h3>
                    <p>New Orders</p>
                  </div>
                  <div class="icon">
                    <i class="ion ion-bag"></i>
                  </div>
                  <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
              </div>
              <!-- ./col -->
              <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-green">
                  <div class="inner">
                    <h3>53<sup style="font-size: 20px">%</sup></h3>
                    <p>Bounce Rate</p>
                  </div>
                  <div class="icon">
                    <i class="ion ion-stats-bars"></i>
                  </div>
                  <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
              </div>
              <!-- ./col -->
              <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-yellow">
                  <div class="inner">
                    <h3>44</h3>
                    <p>User Registrations</p>
                  </div>
                  <div class="icon">
                    <i class="ion ion-person-add"></i>
                  </div>
                  <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
              </div>
              <!-- ./col -->
              <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-red">
                  <div class="inner">
                    <h3>65</h3>
                    <p>Unique Visitors</p>
                  </div>
                  <div class="icon">
                    <i class="ion ion-pie-graph"></i>
                  </div>
                  <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                </div>
              </div>
              <!-- ./col -->
              <div class="col-lg-12">
                <div class="panel panel-default">
                  <div class="panel-heading">
                    Site Detail
                    <div class="pull-right">
                      <a href="index.php"><img src="img/refresh.png" width="20" title="Refresh"></a>
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
													$id=$_SESSION['EmpId'];												
													$sql=mysql_query("SELECT mt_id,mt_ip,mt_user,mt_pass,mt_name,mt_location FROM mt_config WHERE mt_id='".$id."'");
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
														echo "<td>".$ARRAY['0']['cpu-load']."%</td>";															 																													
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
																											
														echo "<td><a href='site/site_conn.php?id=".$result['mt_id']."&conn=".$conn."'><img src=\"img/enter.png\" width=\"20\" title=\"Enter To Site\"></a>";												
													echo "</td>";
													echo "</tr>";
													}
												?>

                          </tbody>
                        </table>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>



            <?php
				 } else { 
            		include($_REQUEST['opt'] . ".php"); 
                 } 
          ?>

        </section>
        <!--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
      </div>

      <aside class="control-sidebar control-sidebar-dark">
        <div class="tab-content">
          <!-- Home tab content -->
          <div class="tab-pane" id="control-sidebar-home-tab">

          </div>
      </aside>

      </div>
      <script src="../plugins/jQueryUI/jquery-2.2.3.min.js"></script>
      <!-- click ui -->
      <!-- Bootstrap v3.3.7 -->
      <script src="../distUI/js/bootstrap.min.js"></script>
      <!-- slide bar fastclick -->
      <script src="../distUI/js/app.min.js"></script>
      <!-- click+ui -->

      <!-- DataTables JavaScript -->
      <script src="../assets/js/plugins/dataTables/jquery.dataTables.js"></script>
      <!-- db table -->
      <script src="../assets/js/plugins/dataTables/dataTables.bootstrap.js"></script>
      <!-- db table -->

      <script src="../plugins/jscolor/jscolor.js"></script>
      <!-- click color -->
      <script src="../assets/js/admin-custom.js"></script>
      <!--function  -->

      <script src="../distUI/js/demo.min.js"></script>

      <script type="text/javascript">
        window.onload = date_time('date_time');
      </script>
      <script>
        function popup(url, name, windowWidth, windowHeight) {
          myleft = (screen.width) ? (screen.width - windowWidth) / 2 : 100;
          mytop = (screen.height) ? (screen.height - windowHeight) / 2 : 100;
          properties = "width=" + windowWidth + ",height=" + windowHeight;
          properties += ",scrollbars=yes, top=" + mytop + ",left=" + myleft;
          window.open(url, name, properties);
        }
      </script>

      <script type="text/javascript">
        $(document).ready(function () {
          $('#dataTables-example').DataTable({
            "language": {
              "sProcessing": "กำลังดำเนินการ...",
              "sLengthMenu": "แสดง _MENU_ รายชื่อ",
              "sZeroRecords": "ไม่พบข้อมูล",
              "sInfo": "แสดง _START_ ถึง _END_ จาก _TOTAL_ รายชื่อ",
              "sInfoEmpty": "แสดง 0 ถึง 0 จาก 0 รายชื่อ",
              "sInfoFiltered": "(ค้นหาข้อมูลจาก _MAX_ รายชื่อ)",
              "sInfoPostFix": "",
              "sSearch": "ค้นหา: ",
              "sUrl": "",
              "oPaginate": {
                "sFirst": "หน้าแรก",
                "sPrevious": "ก่อนหน้า",
                "sNext": "ถัดไป",
                "sLast": "หน้าสุดท้าย"
              }
            }
          });
        });
      </script>
      <footer class="main-footer">
        <div class="pull-right hidden-xs">
          <b>Desing By</b> Mikrotik Thailand
        </div>
        <strong>Copyright &copy; 2016 - <?php echo date("Y");?> <a href="#">Mikrotik Thailand </a>.</strong> All rights
      </footer>

  </body>

  </html>