<?php
		
			include_once('../config/routeros_api.class.php');			
			include_once('conn.php');	
																																
			$ARRAY = $API->comm("/ip/hotspot/user/profile/print");			
									   								
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
                            Hotspot Profiles
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>     
                                        	<th>No.</th>                                                                         	
                                            <th>Name</th>
                                            <th>Rate Limit</th>                                            
                                            <th>Session Timeout</th>
                                            <th>Idle Timeout</th>
                                            <th>Shared Users</th>
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
														echo "<td>".$ARRAY[$i]['name']."</td>";
														echo "<td>";
															if($ARRAY[$i]['rate-limit']==""){
																echo "Unlimited";
															}else{
																echo $ARRAY[$i]['rate-limit'];
															}																
														echo "</td>";
														echo "<td>".$ARRAY[$i]['session-timeout']."</td>";
														echo "<td>".$ARRAY[$i]['idle-timeout']."</td>";
														echo "<td>".$ARRAY[$i]['shared-users']."</td>";
														echo "<td>
														<a href='profile_del.php?name=".$ARRAY[$i]['name']."'><img src='../img/delete.png' width=20px title='Remove Profile'></a>
														<a href='index.php?opt=edit_profile&name=".$ARRAY[$i]['name']."'><img src='../img/edit.png' width=20px title='Edit Profile'></a></td>";
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
