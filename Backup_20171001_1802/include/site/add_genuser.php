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
		                           <form id="add_user" action="con_genuser.php" method="post">
                                  		<div class="form-group input-group">
                                            <span class="input-group-addon">Prefix&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input name="prefix" type="text" class="form-control" maxlength="3" placeholder="Customer Name (Max 3 digi)">
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Amount&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input type="text" name="total" placeholder="Generate Total" class="form-control" required>
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Length Username</span>
                                            <select class="form-control" name="username" size="1" id="username">
                                              <option value="3">3</option>
                                              <option value="4">4</option>
                                              <option value="5">5</option>
                                              <option value="6" selected="selected">6</option>
                                              <option value="7">7</option>
                                              <option value="8">8</option>
                                              <option value="9">9</option>
                                              <option value="10">10</option>
                                            </select>
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Length Password&nbsp;</span>
                                            <select class="form-control" name="password" size="1" id="password">
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                              <option value="5">5</option>
                                              <option value="6" selected="selected">6</option>
                                              <option value="7">7</option>
                                              <option value="8">8</option>
                                              <option value="9">9</option>
                                              <option value="10">10</option>
                                            </select>
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Profiles&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
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
