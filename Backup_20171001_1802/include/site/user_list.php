<?php
		
			include_once('../config/routeros_api.class.php');			
			include_once('conn.php');	
																																															
			//$ARRAY = $API->comm("/ip/hotspot/user/print");			
									   								
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>

        <div id="page-wrapper">
           <br />
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Hotspot User
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>     
                                        	<th>No.</th>                                                                         	
                                            <th>Profile</th>
                                            <th>Date</th>
                                            <th>Total</th>                                            
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                            
												<?php
													$id=$_SESSION['id'];
													$sql="SELECT * FROM mt_gen WHERE mt_id='".$id."' GROUP BY date";
													$query=mysql_query($sql);	
													$no==1;
													While($result=mysql_fetch_array($query)){	
													$no++;
													echo "<tr>";
														echo "<td>".$no."</td>";								
														echo "<td>".$result['profile']."</td>";
														echo "<td>".$result['date']."</td>";
														echo "<td>";
														$count=mysql_fetch_array(mysql_query("SELECT COUNT(user) as total FROM `mt_gen` WHERE date='".$result['date']."'"));
														echo $count['total'];
														echo "</td>";														
														echo "<td>";
														echo "<a href='index.php?opt=user&id=".$result['date']."' title='view'><img src='../img/search.png' width=20px></a>";
														echo "&nbsp;<a href='print.php?id=".$result['date']."' title='Print' target='_blank'><img src='../img/print.png' width=20px></a></td>";														
													echo "</tr>";
													}
												?>
                                                                                                   
                                                                               
                                    </tbody>
                                </table>
                            </div>                           
        </div>
        <!-- /#page-wrapper -->

    </div>
    
</body>
</html>
