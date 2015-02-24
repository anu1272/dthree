function validate(obj,f)
{
   if(f=='S')
         {
		var name1 =document.getElementById(obj).value;
		if(name1=="")
		{
			alert("Please enter all the fields");
			document.getElementById(obj).focus();
		 	return false;
		}
        }

   if(f=='F')
         {
		var name=document.getElementById(obj).value;
                if(name=="")
		{
			alert("Please enter all the fields");
			document.getElementById(obj).focus();
		 	return false;
		}

               for(i=0;i<name.length;i++)
	      {
	       if(!((name.charAt(i)==" ")||(name.charCodeAt(i)>=65&&name.charCodeAt(i)<=90)||(name.charCodeAt(i)>=97&&name.charCodeAt(i)<=122)))
	       {
		alert("Enter only characters");
		document.getElementById(obj).focus();
	 	document.getElementById(obj).select();
	 	return false;
	      }
	     }
        }

       if(f=='G')
         {
                var ph=document.getElementById(obj).value;
                if(ph=="")
		{
			alert("Please enter all the fields");
			document.getElementById(obj).focus();
		 	return false;
		}
                var ValidChars = "0123456789-";
	        var Char;
  	        for (i = 0; i < ph.length ; i++)
	      {
	          Char = ph.charAt(i);
	          if (ValidChars.indexOf(Char) == -1)
	         {
			 	alert("Please Enter Number Only");
			 	document.getElementById(obj).focus();
			 	document.getElementById(obj).select();
			  	return false;
	         }
	      }
         }
         if(f=='A')
         {
		var email=document.getElementById(obj).value;
		if(email=="")
		{
			alert("Please enter all the fields");
			document.getElementById(obj).focus();
		 	return false;
                }
                
                 for (i = 0; i < email.length ; i++)
               {
                       var atpos=email.indexOf("@");
                       var dotpos=email.lastIndexOf(".");
                       
                       
                       
                    if (atpos<1 || dotpos<atpos+2  || dotpos+2>= email.length || email.charAt(i)==" " || dotpos-atpos<=1 )
                        {
			 	alert("Please Enter Valid Email ID");
			 	document.getElementById(obj).focus();
			 	document.getElementById(obj).select();
			  	return false;
	                }
              }
            }
      return true;
}
function validate1(obj1,obj2)
{
    var pass=document.getElementById(obj1).value;
    var pass1=document.getElementById(obj2).value;
    if(pass!==pass1)
    {
               alert("Password and Confirm Password not same");
		document.getElementById(obj2).focus();
		return false;
    }
        return true;
}





