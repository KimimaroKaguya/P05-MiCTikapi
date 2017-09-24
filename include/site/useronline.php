<?php
				
			include_once('../config/routeros_api.class.php');			
			include_once('conn.php');	
																																															
			$ARRAY = $API->comm("/ip/hotspot/active/print");						
									   								
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
                            User Online
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>     
                                        	<th>No.</th>                                                                         	
                                            <th>Username</th>                                           
                                            <th>Address</th>
                                            <th>MAC Address</th>
                                            <th>Uptime</th>
                                            <th>Login By</th>                                                                                        
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                            
												<?php
													$num =count($ARRAY);													
													for($i=0; $i<$num; $i++){	
													$no=$i+1;
													echo "<tr>";
														echo "<td>".$no."</td>";																																							
														echo "<td>".$ARRAY[$i]['user']."</td>";														
														echo "<td>".$ARRAY[$i]['address']."</td>";
														echo "<td>".$ARRAY[$i]['mac-address']."</td>";
														echo "<td>".$ARRAY[$i]['uptime']."</td>";
														echo "<td>".$ARRAY[$i]['login-by']."</td>";														
														echo "<td><a href='useronline_del.php?user=".$i."'><img src='../img/kik.png' width=20px title=Remove></a></td>";
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
