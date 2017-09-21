<?php	
	if(!empty($_REQUEST['name'])){
		if($_REQUEST['site']=='0'){
			echo "<script language='javascript'>alert('Please select site manage.')</script>";
			echo "<script language='javascript'>window.history.back()</script>";
		}else{
			mysql_query("INSERT INTO em VALUE('','".$_REQUEST['name']."','".$_REQUEST['user']."','".md5($_REQUEST['pass'])."','".$site."')");
			echo "<script language='javascript'>alert('Save Done')</script>";
			echo "<meta http-equiv=\"refresh\" content=\"0;url=index.php?opt=cus_list\">";
			exit(0);
		}
	}							   								
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
		                            New Customer
		                        </div>
		                        <div class="panel-body">
		                           <form id="add_site" action="" method="post">    										
                                       <div class="form-group input-group">
                                            <span class="input-group-addon">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input type="text" name="name" placeholder="Full Name" class="form-control" required>
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Username&nbsp;&nbsp;&nbsp;</span>
                                            <input type="text" name="user" placeholder="Username" class="form-control" required>
                                        </div>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Password&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            <input type="password" name="pass" placeholder="Password" class="form-control">
                                        </div>       
										<div class="form-group input-group">
                                            <span class="input-group-addon">Site Manage</span>
                                            <select class="form-control" name="site" size="1" id="address">
                                            	<?php
													$conn = NEW mysqldb();	
													$sql="SELECT mt_name,mt_id FROM mt_config";
													$query=$conn->query($sql);
													echo '<option value="0"></option>';
													while($data=$conn->fetch($query)){																										
														echo '<option value="'.$data->mt_id.'">'.$data->mt_name.'</option>';
													}
												?>
                                            </select>
                                        </div>   
                                        
                                     <div class="form-group input-group">                                        
                                        <button id="btnSave" class="btn btn-success" type="submit"><i class="fa fa-check"></i>&nbsp;Save&nbsp;</button>&nbsp;&nbsp;&nbsp;                                        <button id="btnSave" class="btn btn-danger" type="reset"><i class="fa fa-times"></i>&nbsp;Cancel&nbsp;</button></a>
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
