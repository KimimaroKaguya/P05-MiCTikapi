﻿<?php
		
			include_once('../config/routeros_api.class.php');			
			include_once('../include/conn.php');
			include_once('../include/convert.php');
			
							   								
?>

 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
 <section class="content"> 
  
    <form name="user" action="" method="post">
        <div class="<?php print panel_modify();?>">
                        <div class="<?php print $panel_heading;?>"><strong>$ Hotspot Month List</strong>                            
                        <?php print $date_time_show;?></div>
						<div class="panel-body">
						<span style="color:#ffffff;
float: left;
"><a href="index.php?page=money_month" class="btn btn-default fa fa-arrow-left"></a>&nbsp;<a href="index.php?page=month_list&id=<?php echo $_GET['id']; ?>" class="btn btn-default fa fa-rotate-right"></a> </span><br><br>
                      
						<table class="table table-striped table-hover"  id="dataTables-example">
                                  <thead>
                                        <tr>   
											  
                                        	<th>NO.</th>                                                                         	
                                            <th>COMMENT</th>                                            
                                            <th>วันที่</th>
											<th>จำนวนบัตร</th>
											<th>จำนวนเงิน/บาท</th>
                                             </tr>
                                    </thead>        
                                     <tbody>    
                                    <?php
													$comment=$_GET['id'];
													
													$query=mysql_query("SELECT * FROM mt_money WHERE month_code='".$comment."'");
												$i=0;
													while($result=mysql_fetch_array($query)){
														$i++;
														$count=mysql_fetch_array(mysql_query("SELECT COUNT(month_code) as total FROM `mt_money` WHERE month_code='".$result['month_code']."'"));
														$condate=$result['date'];
                                                        	echo "<tr>";
																	
															echo "<td>".$i."</td>";								
															echo "<td>".$result['month']."</td>";
															echo "<td>".Convert_time($condate)."</td>";	
															echo "<td>".$result['tickets']."</td>";
															//echo "<td>".$year."</td>";
															echo "<td>";
															echo      $result['money'];
															echo "</td>";
															echo "</tr>";
															$total = $total + ($result['money']);
															$total2 = $total2 + ($result['tickets']);
													
													}
												?>
												</tbody>
												 <tfoot>   
											  
                                        	<th></th>                                                                         	
                                            <th></th>                                            
                                            <th>ยอดรวม</th>
											<th><?php echo $total2;?></th>
											<th><?php echo $total;?></th>
                                             </tfoot>
											</table>
								 </div>
								 </div>
								
  </section>
	
                     