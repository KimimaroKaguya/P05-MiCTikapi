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
 <!-- Page Content -->
        <div id="page-wrapper">

            <div class="row">
                <div class="col-lg-12"><br/>
                        <div class="col-lg-2"></div>
		                <div class="col-lg-8">
		                    <div class="panel panel-info">                              
		                        <div class="panel-heading">
		                            Voucher details
		                        </div>
		                        <div class="panel-body">
		                           <form id="add_user" action="con_adduser.php" method="post">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Username</span>
                                            <input type="text" name="username" placeholder="Username" class="form-control" required>
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Password&nbsp;</span>
                                            <input type="password" name="password" placeholder="Password" class="form-control" required>
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Profiles&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <select class="form-control" name="profile" size="1" id="profile">
                                            	<?php
													$num =count($ARRAY);
													for($i=0; $i<$num; $i++){
														$seleceted = ($i == 0) ? 'selected="selected"' : '';
														echo '<option value="'.$ARRAY[$i]['name'].$selected.'">'.$ARRAY[$i]['name'].'</option>';
													}
												?>
                                            </select>
                                        </div>                                        
                                      
                                     <div class="form-group input-group">                                        
                                        <button id="btnSave" class="btn btn-success" type="submit"><i class="fa fa-check"></i>&nbsp;Save&nbsp;</button>&nbsp;&nbsp;&nbsp;                                        <button id="btnSave" class="btn btn-danger" type="reset"><i class="fa fa-times"></i>&nbsp;Reset&nbsp;</button>
                                    </div> 
                                    </form>
		                        </div>		                        
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /#page-wrapper -->
        
            </div>
            <!-- /#wrapper -->
</body>
</html>
