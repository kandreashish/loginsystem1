
function validation() {
    var valid1 = document.getElementsByTagName("input");
   
         var valid = valid1[1];
         if(valid1[0].value == "")
         {
         	  alert("username should not be empty");
         	  valid1[0].focus();
               valid1[0].style.borderBottom= "red dashed 1px";
               return false;
         }
         else if(valid.value == ""  )
            {
                alert("password should not be empty");
               
                valid1[1].style.borderBottom= "red dashed 1px";                        
                return false;
            }
         else if(valid1[2].value == ""  )
         {
             alert("password should not be empty");
            
             valid1[2].style.borderBottom= "red solid 1px";                        
             return false;
         }
         else if(valid1[2].value != valid1[1].value )
         {
             alert("password should be same");
            
             valid1[2].style.borderBottom= "red solid 1px";
             
             return false;
         }
         else if(valid1[3].value == ""  )
         {
             alert("date should not be empty");
            
             valid1[3].style.borderBottom= "red dashed 1px";                        
             return false;
         }
         else if(valid1[4].value == ""  )
         {
             alert("mnumber should not be empty");
            
             valid1[4].style.borderBottom= "red dashed 1px";                        
             return false;
         }
         else if(valid1[4].value <1000000000)
         {
             alert("mnumber should be of 10 digits");
             valid1[4].style.borderBottom= "red dashed 1px";                        
             return false;
         }
         
         else if(valid1[4].value > 1000000000 && valid1[2].value == valid1[1].value)
         {
        	 return true;
         }
        
       
			
}
	