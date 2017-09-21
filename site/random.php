<?php
	function random_user($length) { 
				$rstr = "abcdefghijklmnopqrstuvwxyz"; 
				$nstr = ""; 
				mt_srand ((double) microtime() * 1000000); 
			
				while(strlen($nstr) < $length) { 
				
				$random = mt_rand(0,strlen($rstr)); 
				
				$nstr .= $rstr{$random}; 
				
				} 
				
				return($nstr); 
				
			} 
			
			function random_pass($length) { 
			
				$rstr = "0123456789"; 
				
				$nstr = ""; 
				
				mt_srand ((double) microtime() * 1000000); 
				
				while(strlen($nstr) < $length) { 
				
				$random = mt_rand(0,strlen($rstr)); 
				
				$nstr .= $rstr{$random}; 
				
				} 
				
				return($nstr); 
			
			} 
?>