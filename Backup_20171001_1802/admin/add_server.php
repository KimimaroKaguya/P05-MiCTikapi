<?php	
	if(!empty($_REQUEST['ip'])){

	if((empty($_REQUEST['userPin']) && empty($_REQUEST['customerPin']))||(($_REQUEST['userPin']) == ($_REQUEST['customerPin']))){
echo "<script language='javascript'>swal('ERROR SITE PIN !','กำหนด Site PIN อย่างน้อย จำนวน 1 ไซต์ และไม่เหมือนกัน','error').then(function () {
   window.history.back();}, function (dismiss) {if (dismiss === 'overlay') {
    window.history.back();}})</script>";

						exit();
  
  }else{
	  $ip = $_REQUEST['ip'];
	$user = $_REQUEST['username'];
	$pass = $_REQUEST['password'];
	$papi = $_REQUEST['portapi'];
	$pweb = $_REQUEST['portweb'];
	$cus_pin = $_REQUEST['customerPin'];
	$user_pin = $_REQUEST['userPin'];
	$sitename = $_REQUEST['siteName'];
	if(!empty($cus_pin)){$cusPIN_data="or user_pin='".$cus_pin."'";}
	if(!empty($user_pin)){$userPIN_data="or customer_pin='".$user_pin."'";}
	$secu=mysql_fetch_array(mysql_query("SELECT admin_pin FROM mt_config"));
	$admin_pin=$secu['admin_pin'];if($secu['admin_pin']==""){$admin_pin=md5("000000000");}
	 //open//vol.1
	if(empty($secom_v1)||($secom_v1==$_SESSION['security'])){	
	$sql=mysql_query("SELECT * FROM mt_config where mt_ip='".$ip."' or admin_pin='".md5($cus_pin)."' or admin_pin='".md5($user_pin)."'
	".$cusPIN_data." ".$userPIN_data."");
	 $num=mysql_num_rows($sql);
	 if($num==0){
	 mysql_query("INSERT INTO mt_config VALUE('','$user','$pass','$ip','$papi','$pweb','$sitename','$admin_pin','$cus_pin','$user_pin','".date("Y-m-d H:i:s")."','')");
	  mysql_query("UPDATE mt_config SET mt_id=mt_num WHERE mt_ip='".$ip."'");
	
	
	echo "<script language='javascript'>swal('Save Done!','เพิ่ม ".$sitename." สำเร็จแล้ว!','success').then(
  function () {
    window.location.href = 'index.php';
}, function (dismiss) {
  if (dismiss === 'overlay') {
    window.location.href = 'index.php';
   }})</script>";
		exit(0);
	 
	 }else{
	 echo "<script language='javascript'>swal('ERROR IP/DNS or Site PIN !','IP/DNS ซํ้า หรือ Site Pin ซํ้ากับ Classอื่น.','error').then(function () {
   //window.history.back();
    window.location.href = 'index.php?page=add_server';}, function (dismiss) {if (dismiss === 'overlay') {
    //window.history.back();
	window.location.href = 'index.php?page=add_server';
	}})</script>";

						exit();}
	
	}else{
		if($secom_v2==$_SESSION['security']){
		
        
		$sql=mysql_query("SELECT * FROM mt_config where mt_ip='".$ip."' or admin_pin='".md5($cus_pin)."' or admin_pin='".md5($user_pin)."'
	".$cusPIN_data." ".$userPIN_data."");

    $num=mysql_num_rows($sql);
   if($num==0){
               mysql_query("INSERT INTO mt_config VALUE('','$user','$pass','$ip','$papi','$pweb','$sitename','$admin_pin','$cus_pin','$user_pin','".date("Y-m-d H:i:s")."','')");
	  mysql_query("UPDATE mt_config SET mt_id=mt_num WHERE mt_ip='".$ip."'");
	
	
	echo "<script language='javascript'>swal('Save Done!','เพิ่ม ".$sitename." สำเร็จแล้ว!','success').then(
  function () {
    window.location.href = 'index.php';
}, function (dismiss) {
  if (dismiss === 'overlay') {
    window.location.href = 'index.php';
   }})</script>";
		exit(0);
   }else{
   
    echo "<script language='javascript'>swal('ERROR IP/DNS or Site PIN !','IP/DNS ซํ้า หรือ Site Pin ซํ้ากับ Classอื่น.','error').then(function () {
   window.history.back();}, function (dismiss) {if (dismiss === 'overlay') {
    window.history.back();}})</script>";

						exit();}
		
		}
	}
#####################
  }	
}
?>

 
	  <section class="content"> 
	  <div class="<?php print panel_modify();?>">
          <div class="<?php print $panel_heading;?>"><strong>Add Mikrotik Deviced</strong>
		  <?php print $date_time_show;?></div>
 
          <div class="modal-body">
              <div class="row">
                  <div class="col-xs-7">
                      <div class="well">
                          <form id="loginForm" method="POST" action="" >
                             <div class="row">
                              <div class="col-xs-12  col-md-6">
                              <div class="form-group">
                                  <label for="username" class="control-label">IP Address / DNS </label>
                                  <input type="text" class="form-control" id="ip" name="ip" required title="Please enter you IP/DNS" placeholder="xxx.sn.mynetname.net">
                                </div> 
                              </div>
                              <div class="col-xs-12  col-md-6">
							  <div class="form-group">
                                  <label for="password" class="control-label">Site Name</label>
                                  <input type="text" class="form-control" id="siteName" name="siteName"  title="Please enter your Site Name" placeholder="Ex.ชื่อไซต์งาน"  required>
                                 </div>
								  </div>
                              </div>

							  <div class="row">
                              <div class="col-xs-12  col-md-6">
                              <div class="form-group">
                                  <label for="password" class="control-label">Username</label>
                                  <input type="text" class="form-control" id="username" name="username" value="admin" required title="Please enter your username">
                                </div> 
                              </div>
                              <div class="col-xs-12  col-md-6">
							   <div class="form-group">
                                  <label for="password" class="control-label">Password</label>
                                  <input type="password" class="form-control" id="password" name="password" value="" required title="Please enter your password">
                               </div>
								  </div>
                              </div>

							  <div class="row">
                              <div class="col-xs-12  col-md-6">
                                <div class="form-group">
                                  <label for="password" class="control-label">Port API</label>
                                  <input type="text" class="form-control" id="portapi" name="portapi" value="8728" required title="Please enter your port-api">
                                 </div> 
                              </div>
                              <div class="col-xs-12  col-md-6">
							   <div class="form-group">
                                  <label for="password" class="control-label">Port Web Config</label>
                                  <input type="text" class="form-control" id="portweb" name="portweb" value="80" required title="Please enter your port-web">
                                 </div>
								  </div>
                              </div>
							  <div class="row">

                          <?php 
	                     if(empty($secom_v1)||($secom_v1==$_SESSION['security'])){	
		                                                  ?>
                              <div class="col-xs-12  col-md-6">
							  <div class="form-group">
            <label for="password" class="control-label">  Site PIN </label>
			<a href="#"  data-toggle="modal" data-target="#PINDetail" data-toggle="tooltip" data-placement="top" title="ดูรายละเอียด"><i class="fa fa-circle" style="color: #f7d13c"> </i></a>
            <input type="text" class="form-control" id="customerPin" name="customerPin"  title="Please enter your Site PIN" maxlength="8"  placeholder="Ex.12345678" >
                                 </div> 
                              </div>
			<div class="col-xs-12  col-md-6">
							  <div class="form-group">
            <label for="password" class="control-label"> Site PIN </label>
			<a href="#"  data-toggle="modal" data-target="#PINDetail" data-toggle="tooltip" data-placement="top" title="ดูรายละเอียด"><i class="fa fa-circle" style="color: #ff1c15"> </i></a>
            <input type="text" class="form-control" id="userPin" name="userPin"  title="Please enter your Site PIN" maxlength="8"  placeholder="Ex.12345678" >
                                 </div> 
                              </div>
                              <?php  }else{
							  if($secom_v2==$_SESSION['security']){
							  ?>
                          
							 <!--hide  -->
							  <input type="hidden" value="<?php echo $_SESSION['security'];?>" name="customerPin">
							 <!--hide  -->

							 <div class="col-xs-12  col-md-6">
							  <div class="form-group">
                    <label for="password" class="control-label">  Site PIN </label>
                  <a href="#"  data-toggle="modal" data-target="#PINDetail" data-toggle="tooltip" data-placement="top" title="ดูรายละเอียด"><i class="fa fa-circle" style="color: #f7d13c"> </i></a>
                                  <option type="text" class="form-control" id="customerPin" name="customerPin"  title="Please enter your Site PIN" maxlength="8" value="<?php echo $_SESSION['security'];?>" placeholder="Ex.12345678"  required>
                                 <?php echo $_SESSION['security'];?> 
								  </div> 
                              </div>
							  <div class="col-xs-12  col-md-6">
							  <div class="form-group">
                    <label for="password" class="control-label"> Site PIN </label>
					<a href="#"  data-toggle="modal" data-target="#PINDetail" data-toggle="tooltip" data-placement="top" title="ดูรายละเอียด"><i class="fa fa-circle" style="color: #ff1c15"> </i></a>
								 <input type="text" class="form-control" id="userPin" name="userPin"  title="Please enter your Site PIN" maxlength="8"  placeholder="Ex.12345678" >
                                 </div> 
                              </div>
                           <?php }
						  if($secom_v3==$_SESSION['security']){ ?>
						  <div class="col-xs-12  col-md-6">
							  <div class="form-group">
                    <label for="password" class="control-label">  Site PIN </label>
                   <a href="#"  data-toggle="modal" data-target="#PINDetail" data-toggle="tooltip" data-placement="top" title="ดูรายละเอียด"><i class="fa fa-circle" style="color: #f7d13c"> </i></a> 
                                  <option type="text" class="form-control" id="customerPin" name="customerPin"  title="Please enter your Site PIN" maxlength="8" value="<?php echo $_SESSION['security'];?>" placeholder="Ex.12345678"  required>********
                                 </div> 
                              </div>
							 <div class="col-xs-12  col-md-6">
							  <div class="form-group">
                    <label for="password" class="control-label"> Site PIN </label>
                  <a href="#"  data-toggle="modal" data-target="#PINDetail" data-toggle="tooltip" data-placement="top" title="ดูรายละเอียด"><i class="fa fa-circle" style="color: #ff1c15"> </i></a>
                                  <option type="text" class="form-control" id="userPin" name="userPin"  title="Please enter your Site PIN" maxlength="8" value="<?php echo $_SESSION['security'];?>" placeholder="Ex.12345678"  required>
                                 <?php echo $_SESSION['security'];?> 
								  </div> 
                              </div>

                          <?php } }?>     

                              
                              </div>

 
                              <div class="row">
                            <div class="col-xs-6 col-md-6">
                              
                                   <button type="button" class="btn btn-success btn-block test-btn">Test Connect</button> 
							</div>
                            <div class="col-xs-6 col-md-6 pull-right">
                                <button id="btnSave" class="btn btn-warning  btn-block" type="reset"><i class="fa fa-refresh">&nbsp;&nbsp;</i>Reset</button>
                            </div>
                        </div>
                        
                     
                      </div>
                  </div>
                  <div class="col-xs-5">
                      <p class="lead">Test Connection </p>
						<div class="test-connect"><div>
				  
              </div>
          </div>
		  <?php
			if($secom_v3==$_SESSION['security']){ ?>
		  <input type="" class="btn btn-info disabled btn-block add-server" value="เพิ่ม">
		 <?php
			  }else{ ?> 
			  
         <input type="submit" class="btn btn-info btn-block add-server" value="เพิ่ม">

               <?php } ?>

         <input type="button" class="btn btn-danger btn-block add-server" value="ยกเลิกและย้อนกลับ" onclick="window.location='index.php?page=server'">
      </div>
	   </form>
  </div>
       <!-- Modal Detail-->
        <div class="modal fade" id="Detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          
			 <div class="modal-dialog" role="document" style="height: 600px; width: 800px;">
 <div class="<?php print panel_modify();?>">
                        <div class="<?php print $panel_heading;?>">
                           <h3 class="box-title">รายละเอียด ADMIN LOGIN ด้วย PIN สามารถจัดการได้ในระบบ</h3>
						   <div class="box-tools pull-right">
						   <button type="button" class="btn btn-box-tool" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						   </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Security Site Levels</th>
                                            <th><i class="fa fa-circle" style="color: #ff1c15;"></i> Lower Class</th>
                                            <th><i class="fa fa-circle" style="color: #f7d13c;"></i> Middle Class</th>
                                             <th><i class="fa fa-circle" style="color: #00ff00;"></i> High Class</th>
											 <th><i class="fa fa-circle" style="color: #00ff00;"></i> None Security</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>สร้าง ไซต์งานเพิ่ม</td>
                                            <td class="text-center"><i class="fa fa-close" style="color: #ff1c15;"></i></td>
                                            <td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
                                            <td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
											<td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>แก้ไข ไซต์งาน</td>
                                            <td class="text-center"><i class="fa fa-close" style="color: #ff1c15;"></i></td>
                                            <td class="text-center"><i class="fa fa-check" style="color: #00c600;"></i></td>
                                            <td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
											<td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
                                        </tr>
										<tr>
                                            <td>3</td>
                                            <td>ลบ ไซต์งาน</td>
                                            <td class="text-center"><i class="fa fa-check" style="color: #00c600;"></i></td>
                                            <td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
                                            <td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
											<td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>แก้ไข รหัส PIN ของตัวเอง</td>
                                            <td class="text-center"><i class="fa fa-close" style="color: #ff1c15;"></i></td>
                                            <td class="text-center"><i class="fa fa-close"  style="color: #ff1c15;"></td>
                                            <td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
											<td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
                                        </tr>
										<tr>
                                            <td>3</td>
                                            <td>แก้ไข รหัส PIN ไซต์ที่สร้างเอง</td>
                                            <td class="text-center"><i class="fa fa-close" style="color: #ff1c15;"></i></td>
                                            <td class="text-center"><i class="fa fa-check" style="color: #00c600;"></i></td>
                                            <td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
											<td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
                                        </tr>
                                         <tr>
                                            <td>5</td>
                                            <td>มองเห็น ทุกไซต์งาน</td>
                                            <td class="text-center"><i class="fa fa-close" style="color: #ff1c15;"></i></td>
                                            <td class="text-center"><i class="fa fa-close"  style="color: #ff1c15;"></td>
                                            <td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
											<td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>แก้ไข ทุกไซต์งาน</td>
                                            <td class="text-center"><i class="fa fa-close" style="color: #ff1c15;"></i></td>
                                            <td class="text-center"><i class="fa fa-close"  style="color: #ff1c15;"></td>
                                            <td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
											<td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
                                        </tr>
										<tr>
                                            <td>7</td>
                                            <td>ปิด-เปิดระบบ Security Site</td>
                                            <td class="text-center"><i class="fa fa-close" style="color: #ff1c15;"></i></td>
                                            <td class="text-center"><i class="fa fa-close"  style="color: #ff1c15;"></td>
                                            <td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
											<td class="text-center"><i class="fa fa-check"  style="color: #00c600;"></td>
                                        </tr>
                                        </center></tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    </div>


          </div>				
		<!-- ##############../Modal Detail..####################### -->
<!-- ##################################### -->
		<!-- Modal PINDetail-->
        <div class="modal fade" id="PINDetail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          
			 <div class="modal-dialog" role="document" style="width: 1000px;">
                 <div class="<?php print panel_modify();?>">
                        <div class="<?php print $panel_heading;?>">
                           <h3 class="box-title">รายละเอียด SITE PIN</h3>
						   <div class="box-tools pull-right">
						   <button type="button" class="btn btn-box-tool" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						   </div>
                        </div>
                        <div class="panel-body">
                            
                                 <table class="table table-striped table-hover"  id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>NO.</th>
                                             <th>Site Name</th>
											 <th>SERVER</th>
											 <th>USERNAME</th>
                                     <th><i class="fa fa-circle" style="color: #00ff00;"></i> PIN High Class</th>
									<th><i class="fa fa-circle" style="color: #f7d13c;"></i> PIN Middle Class</th>
                                     <th><i class="fa fa-circle" style="color: #ff1c15;"></i> PIN Lower Class</th>
                                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                         <?php

	 $secu=mysql_fetch_array(mysql_query("SELECT admin_pin FROM mt_config"));
	$admin_pin=$secu['admin_pin'];

if(!empty($admin_pin)&&($admin_pin==$_SESSION['security'])){
	$session_login="admin_pin";}else{
                                             if($secom_v2==$_SESSION['security']){
		$session_login="customer_pin";}else if($secom_v3==$_SESSION['security']){
		$session_login="user_pin";}		
		}
   
$sql=mysql_query("SELECT * FROM mt_config WHERE ".$session_login."='".$_SESSION['security']."'");

         $no==1;
		while($result = mysql_fetch_array($sql)){
			//$API = new routeros_api();				
			//$API->debug = false;
			$no++;
          echo " <tr>";
			echo " <td>".$no."</td>"; 
			echo " <td>".$result['site_name']."</td>";
			echo " <td>".$result['mt_id']."</td>";
			echo " <td>".$_SESSION['APIUser']."</td>";
			echo " <td>****</td>";
			if($secom_v3==$_SESSION['security']){echo " <td>****</td>";}else{
			echo " <td>".$result['customer_pin']."</td>";}
			echo " <td>".$result['user_pin']."</td>";
			
			
			
		echo "</tr>";
					
					
					
					
					
					}?>
                                           
                                        </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    </div>


          				
		<!-- ##############/.Modal PINDetail ####################### -->


    
</section>
 

