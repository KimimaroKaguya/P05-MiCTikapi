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
		                            New Hotspot User Profile
		                        </div>
		                        <div class="panel-body">
		                           <form id="add_user" action="con_addprofile.php" method="post">
								   
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input type="text" name="name" placeholder="Profiles Name" class="form-control" required>
                                        </div>
										<hr>

                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Session Timeout&nbsp;&nbsp;&nbsp;</span>
                                            <input type="text" name="session" placeholder="Session Timeout (h:m:s)" value="00:03:00" class="form-control" required>
                                        </div>

                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Idle Timeout&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input type="text" name="idle" placeholder="Idle Timeout (h:m:s)" class="form-control" value="none" required>
                                        </div>

										<div class="form-group input-group">
                                            <span class="input-group-addon">Keepalive Timeout</span>
                                            <input type="text" name="keep" placeholder="Keepalive Timeout (h:m:s)" class="form-control" value="00:02:00" required>
                                        </div>

										<div class="form-group input-group">
                                            <span class="input-group-addon">Status Autorefresh</span>
                                            <input type="text" name="auto" placeholder="Status Autorefresh (h:m:s)" class="form-control" value="00:01:00" required>
                                        </div>										
										<hr>
										
										<div class="form-group input-group">
                                            <span class="input-group-addon">Uptime&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input type="text" name="uptime" placeholder="Uptime ( Example : 1d or 1h ) " class="form-control" required>
                                        </div>

                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Shared Users&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input type="text" name="use" placeholder="Shared Users" class="form-control" value="1" required>
                                        </div>

                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Rate Limit&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input type="text" name="limit" placeholder="Upload / Download" class="form-control">
                                        </div>										
                                                                      
                                      
                                      <div class="form-group input-group">
                                            <span class="input-group-addon">Address List&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <select class="form-control" name="address" size="1" id="address">
                                            	<?php
													$List = $API->comm("/ip/firewall/address-list/print");
													$num =count($List);		
														echo '<option value=""></option>';
													for($i=0; $i<$num; $i++){														
														echo '<option value="'.$List[$i]['list'].'">'.$List[$i]['list'].'</option>';
													}
												?>
                                            </select>
                                        </div>   

									<div class="form-group input-group">                                        
                                        <button id="btnSave" class="btn btn-success" type="submit"><i class="fa fa-check"></i>&nbsp;Save&nbsp;</button>&nbsp;&nbsp;&nbsp;                                        <button id="btnSave" class="btn btn-danger" type="reset"><i class="fa fa-times"></i>&nbsp;Reset&nbsp;</button></a>
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
