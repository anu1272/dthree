<%-- 
    Document   : Feedback
    Created on : Apr 2, 2013, 11:54:03 PM
    Author     : Hrishikesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.html"%>
<%@include file="Footer.html"%>
<%@page import=" java.sql.*;" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta content="en-us" http-equiv="Content-Language" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Untitled 1</title>
<style type="text/css">
.style1 {
	margin-left: 166px;
}
.style2 {
	margin-left: 188px;
}
.style3 {
	margin-left: 205px;
}
.style4 {
	margin-left: 185px;
}
.style5 {
	vertical-align: top;
}
.style6 {
	margin-left: 115px;
}
.style7 {
	margin-left: 68px;
}
</style>

<script type="text/javascript" src="js/BloodDonationMaster.js"></script>
<script type="text/javascript">
   function callValidate()
   {
      if(validate('txt_phno','G'))
      {
          if(validate('txt_msg','S'))
             {
             if(validate('txt_name','F'))
               {
                 if(validate('txt_emid','A'))
                  {
                      
                              return true;
                   }
                }
               }
              }
              return false;
              }
                            
                       
                  
               
             
          
             
             
    
   
  
  
</script>


</head>

<body>

<form name="first" action="" method="post" onsubmit="return callValidate();" style="height: 250px; width: 564px; padding-top:250px; padding-left:300px;">
<div id="text3" style="position:absolute; overflow:hidden; left:35px; top:140px; width:500px; height:100px; z-index:5">

    <div align=justify><h1>We welcome your feedback</h1></div></div>
	<br />
	Name<input id="txt_name" class="style3" name="Text1" style="height: 30px; width: 175px" type="text" /><br />
	<br />
	Email ID<input id="txt_emid" class="style4" name="Text2" style="height: 30px; width: 175px" type="text" /><br />
	<br />
	Contact No.<input id="txt_phno" class="style1" name="Text3" style="height: 30px; width: 175px" type="text" /><br />
	<br />
	<span class="style5">Message</span><textarea id="txt_msg" class="style2" name="TextArea1" style="height: 91px; width: 172px"></textarea><br />
	<br />

	<br />
	<br />
	<input class="style6" name="Submit1" type="submit" value="Submit" /><input class="style7" name="Reset1" type="reset" value="Cancel" /><br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
        <br />
        </form>

    <%
           Connection con= null;
           Statement stat= null;
      try
          {
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dthree","root","root");
           
      }
    catch(Exception e)
          {
            out.println("Exception First");
          }

           String sql;
           String Name,CoNo,EId,Mesg;
           


            Name = request.getParameter("Text1");
            EId = request.getParameter("Text2");
            CoNo = request.getParameter("Text3");
            Mesg = request.getParameter("TextArea1");
            
            if(Name!=null &&EId!=null&&CoNo!=null&&Mesg!=null)
                               {
               try
                {
                     stat=con.createStatement();
        
                    sql= "insert into feedbackform values( '" + Name + "','"+ EId +"','"+ CoNo +"','"+ Mesg +"')";
                    stat.executeUpdate(sql);

                }
             
        catch(Exception e)
       {
         out.println(e);    
       }
               
               
               
               
                 }
   
    
                      
      
   
 %>

</body>

</html>
