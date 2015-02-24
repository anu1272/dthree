<%--
    Document   : DoctorMaster
    Created on : Mar 20, 2013, 12:59:20 AM
    Author     : Hrishikesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.html"%>
<%@include file="Footer.html"%>
<%@page import=" java.sql.*;" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta content="en-us" http-equiv="Content-Language" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>ID Number</title>
<style type="text/css">
.style1 {
	margin-left: 174px;
}
.style3 {
	margin-left: 158px;
	margin-top: 0px;
}
.style4 {
	margin-left: 194px;
}
.style5 {
	margin-left: 207px;
}
.style6 {
	margin-left: 154px;
}
.style7 {
	margin-left: 150px;
}
.style8 {
	margin-left: 189px;
}
.style9 {
	vertical-align: top;
}
.style10 {
	margin-left: 167px;
}
.style11 {
	margin-left: 156px;
	margin-top: 0px;
}
.style12 {
	margin-left: 205px;
}
.style13 {
	margin-left: 170px;
}
.style14 {
	margin-left: 17px;
}
.style15 {
	margin-left: 109px;
}
.style16 {
	margin-left: 146px;
	margin-top: 14px;
}
.style17 {
	font-family: Biondi;
	margin-left: 165px;
}
</style>


<script type="text/javascript" src="js/BloodDonationMaster.js"></script>
<script type="text/javascript">
   function callValidate()
   {
      if(validate('id_number','G'))
      {
          if(validate('text_name','F'))
             {
             if(validate('text_phno','G'))
               {
                 if(validate('text_mobno','G'))
                  {
                      if(validate('text_eid','A'))
                       {
                          if(validate('text_cadd','S'))
                            {
                               if(validate('text_hadd','S'))
                                    {
                                     if(validate('text_spec','S'))
                                        {
                                            if(validate('text_degree','S'))
                                                {
                                                if(validate('text_vt','S'))
                                                     {
                                                       return true;
                                                     }
                                                }
                                        }
                                  }
                            }
                       }
                  }
               }
             }
      }
                  return false;
   }
</script>

</head>
<body>
    <form name="first" action="" method="post" onsubmit="return callValidate();" style="height: 708px; width: 564px; padding-top:150px; padding-left:300px;">
	<p class="style17" style="width: 234px"><strong>DOCTOR MASTER</strong></p>
	<p>&nbsp;</p>
	<p>ID Number<input id="id_number" class="style1" name="Text1" type="text" /></p>
	<p>Name<input id="text_name" class="style5" name="Text2" type="text" /></p>
	<p>Gender<input checked="checked" class="style4" name="Radio1" type="radio" value="Male" /><label id="Label2">Male</label><input class="style14" name="Radio1" type="radio" value="Female"/>Female</p>
	<p>Phone Number<input id="text_phno" class="style6" name="Text4" type="text" /></p>
	<p>Mobile Number<input id="text_mobno" class="style7" name="Text5" type="text" /></p>
	<p>E-mail ID<input id="text_eid" class="style8" name="Text6" type="text" /></p>
	<p><label id="Label1"></label><span class="style9">Clinic Address</span><textarea id="text_cadd" class="style3" cols="20" name="TextArea2" rows="1" style="width: 284px; height: 88px"></textarea></p>
	<p><span class="style9">Home Address</span><textarea class="style11" cols="20" id="text_hadd"name="TextArea3" rows="1" style="width: 284px; height: 88px"></textarea></p>
	<p>Specialization<input id="text_spec" class="style10" name="Text7" type="text" /></p>
	<p>Degree<input id="text_degree" class="style12" name="Text8" type="text" /></p>
	<p>Visiting Time<input id="text_vt" class="style13" name="Text9" type="text" /></p>
	<p>
            <input class="style16" name="Submit1" style="width: 80px" type="submit" value="SUBMIT"/><input class="style15" name="Reset1" style="width: 80px" type="reset" value="RESET" /></p>
        
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
           String ID,PhNo,MobNo,Name,Gender,EId,CAdd,HAdd,Spec,Degree,VisitT;


            ID =request.getParameter("Text1");
            Name = request.getParameter("Text2");
            Gender = request.getParameter("Radio1");
            PhNo = request.getParameter("Text4");
            MobNo = request.getParameter("Text5");
            EId = request.getParameter("Text6");
            CAdd = request.getParameter("TextArea2");
            HAdd = request.getParameter("TextArea3");
            Spec = request.getParameter("Text7");
            Degree = request.getParameter("Text8");
            VisitT = request.getParameter("Text9");
       if(ID!= null &&Name!= null &&Gender!= null &&PhNo!= null &&MobNo!= null &&EId!= null &&CAdd!= null &&HAdd!= null &&Spec!= null &&Degree!= null &&VisitT != null)
                    {
      try
      {
        stat=con.createStatement();
        sql= "insert into doctormaster values( " + ID + ", '"+ Name +"','"+ Gender +"',"+ PhNo +","+ MobNo +",'"+ EId +"','"+ CAdd +"','"+ HAdd +"','"+ Spec +"','"+ Degree +"','"+ VisitT +"')";
        stat.executeUpdate(sql);
      }
catch(Exception e)
    {
            out.println(e);
    }
}
%>
</form>
</body>
</html>