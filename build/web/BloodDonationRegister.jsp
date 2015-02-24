<%-- 
    Document   : BloodDonationRegister
    Created on : Mar 15, 2013, 3:24:53 PM
    Author     : Hrishikesh
--%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@include file="Header.html" %>

<%@page import=" java.sql.*;" %>
<%@include file="BloodSideBanner.html"%>

<html>
<head>
<title>Untitled</title>
<meta name="generator" content="Web Page Maker">
<style type="text/css">
/*----------Text Styles----------*/
.ws6 {font-size: 8px;}
.ws7 {font-size: 9.3px;}
.ws8 {font-size: 11px;}
.ws9 {font-size: 12px;}
.ws10 {font-size: 13px;}
.ws11 {font-size: 15px;}
.ws12 {font-size: 16px;}
.ws14 {font-size: 19px;}
.ws16 {font-size: 21px;}
.ws18 {font-size: 24px;}
.ws20 {font-size: 27px;}
.ws22 {font-size: 29px;}
.ws24 {font-size: 32px;}
.ws26 {font-size: 35px;}
.ws28 {font-size: 37px;}
.ws36 {font-size: 48px;}
.ws48 {font-size: 64px;}
.ws72 {font-size: 96px;}
.wpmd {font-size: 13px;font-family: Arial,Helvetica,Sans-Serif;font-style: normal;font-weight: normal;}
/*----------Para Styles----------*/
DIV,UL,OL /* Left */
{
 margin-top: 0px;
 margin-bottom: 0px;
}
</style>
<script type="text/javascript" src="js/BloodDonationMaster.js"></script>
<script type="text/javascript">
   function callValidate()
   {
      if(validate('txt_name','F'))
      {
          if(validate('txt_dob','G'))
             {
             if(validate('txt_weight','G'))
               {
                 if(validate('txt_dold','G'))
                  {
                      if(validate('txt_city','F'))
                       {
                          if(validate('txt_mobno','G'))
                            {
                               if(validate('txt_phno','G'))
                                    {
                                     if(validate('txt_emid','A'))
                                        {
                                            if(validate('txt_address','S'))
                                                {
                                                if(validate('txt_uid','S'))
                                                     {
                                                   if(validate('txt_pass','S'))
                                                        {
                                                             if(validate1('txt_pass','txt_cpass'))
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
          }
             }
             
                  return false;
   }
  
  
</script>


</head>
<body>
<div id="image4" style="position:absolute; overflow:hidden; left:239px; top:196px; width:775px; height:900px; z-index:0"><img src="Image/Blood_Bank/Shape.gif" alt="" title="" border=0 width=775 height=903></div>

<form  name="form1" action="" method="post" onsubmit= "return callValidate();" style="margin:0px">
<input id="txt_name" name="formtext1" type="text" style="position:absolute;width:184px;left:555px;top:278px;z-index:11">
<input id="txt_weight" name="formtext2" type="text" style="position:absolute;width:184px;left:555px;top:439px;z-index:12">
<input id="txt_dob" name="formtext3" type="text" style="position:absolute;width:184px;left:555px;top:399px;z-index:13">
<input id="txt_dold" name="formtext4" type="text" style="position:absolute;width:184px;left:555px;top:477px;z-index:14">
<input id="txt_city" name="formtext5" type="text" style="position:absolute;width:184px;left:556px;top:517px;z-index:17">
<input id="txt_phno" name="formtext6" type="text" style="position:absolute;width:184px;left:555px;top:595px;z-index:18">
<input id="txt_mobno" name="formtext7" type="text" style="position:absolute;width:184px;left:555px;top:559px;z-index:19">
<input id="txt_emid" name="formtext8" type="text" style="position:absolute;width:184px;left:555px;top:635px;z-index:20">
<textarea id="txt_address" name="textarea1" style="position:absolute;left:556px;top:677px;width:182px;height:102px;z-index:21"></textarea>

<input name="formbutton2" type="reset" value="Cancel" style="position:absolute;left:577px;top:1000px;z-index:24">
<select  name="formselect1" style="position:absolute;left:556px;top:357px;width:183px;z-index:25">
<option value="Select">Select</option>
<option value="A1+">A1+</option>
<option value="A1-">A1-</option>
<option value="A2+">A2+</option>
<option value="A2-">A2-</option>
<option value="B+">B+</option>
<option value="B-">B-</option>
<option value="A1B+">A1B+</option>
<option value="A1B-">A1B-</option>
<option value="A2B+">A2B+</option>
<option value="A2B-">A2B-</option>
<option value="AB+">AB+</option>
<option value="AB-">AB-</option>
<option value="O+">O+</option>
<option value="O-">O-</option>
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="RH+">RH+</option>
<option value="RH-">RH-</option>
<option value="I Dont Know My Blood Group">I Dont Know My Blood Group</option>
</select>
<input id="txt_uid" name="formtext9" type="text" style="position:absolute;width:184px;left:556px;top:856px;z-index:30">
<input id="txt_pass" name="formtext10" type="password" style="position:absolute;width:184px;left:556px;top:894px;z-index:33">
<input id="txt_cpass" name="formtext11" type="password" style="position:absolute;width:184px;left:555px;top:934px;z-index:34">
<input name="formbutton1" type="submit" value="Register" onclick="return callValidate();" style="position:absolute;left:453px;top:1000px;z-index:23">
<select name="formselect2" style="position:absolute;left:554px;top:317px;width:185px;z-index:41">
<option value="Select">Select</option>
<option value="Male">Male</option>
<option value="Female">Female</option>
</select>
</form>

<div id="text3" style="position:absolute; overflow:hidden; left:378px; top:280px; width:90px; height:21px; z-index:2">
<div class="wpmd">
<div><font face="Times New Roman" class="ws12"><B>Donor Name</B></font></div>
</div></div>

<div id="text4" style="position:absolute; overflow:hidden; left:377px; top:360px; width:90px; height:21px; z-index:3">
<div class="wpmd">
<div><font face="Times New Roman" class="ws12"><B>Blood Group</B></font></div>
</div></div>

<div id="text5" style="position:absolute; overflow:hidden; left:376px; top:319px; width:90px; height:21px; z-index:4">
<div class="wpmd">
<div><font face="Times New Roman" class="ws12"><B>Gender</B></font></div>
</div></div>

<div id="text6" style="position:absolute; overflow:hidden; left:375px; top:399px; width:90px; height:21px; z-index:5">
<div class="wpmd">
<div><font face="Times New Roman" class="ws12"><B>Date of Birth</B></font></div>
</div></div>

<div id="text7" style="position:absolute; overflow:hidden; left:375px; top:439px; width:90px; height:21px; z-index:6">
<div class="wpmd">
<div><font face="Times New Roman" class="ws12"><B>Weight</B></font></div>
</div></div>

<div id="text8" style="position:absolute; overflow:hidden; left:376px; top:478px; width:152px; height:21px; z-index:7">
<div class="wpmd">
<div><font face="Times New Roman" class="ws12"><B>Date of Last Donated</B></font></div>
</div></div>

<div id="text9" style="position:absolute; overflow:hidden; left:376px; top:559px; width:111px; height:21px; z-index:8">
<div class="wpmd">
<div><font face="Times New Roman" class="ws12"><B>Mobile Number</B></font></div>
</div></div>

<div id="text10" style="position:absolute; overflow:hidden; left:376px; top:519px; width:90px; height:21px; z-index:9">
<div class="wpmd">
<div><font face="Times New Roman" class="ws12"><B>City</B></font></div>
</div></div>

<div id="text11" style="position:absolute; overflow:hidden; left:375px; top:599px; width:105px; height:21px; z-index:10">
<div class="wpmd">
<div><font face="Times New Roman" class="ws12"><B>Phone Number</B></font></div>
</div></div>

<div id="text12" style="position:absolute; overflow:hidden; left:375px; top:638px; width:90px; height:21px; z-index:15">
<div class="wpmd">
<div><font face="Times New Roman" class="ws12"><B>Email ID</B></font></div>
</div></div>

<div id="text13" style="position:absolute; overflow:hidden; left:376px; top:677px; width:90px; height:21px; z-index:16">
<div class="wpmd">
<div><font face="Times New Roman" class="ws12"><B>Address</B></font></div>
</div></div>

<div id="text16" style="position:absolute; overflow:hidden; left:345px; top:812px; width:315px; height:28px; z-index:22">
<div class="wpmd">
<div><font face="Colonna MT" class="ws16"><B>Future Login Information</B></font></div>
</div></div>

<div id="text17" style="position:absolute; overflow:hidden; left:665px; top:499px; width:100px; height:16px; z-index:26">
<div class="wpmd">
<div><font face="Times New Roman" class="ws7">(YYYY-MM-DD)</font></div>
</div></div>

<div id="text18" style="position:absolute; overflow:hidden; left:664px; top:421px; width:100px; height:16px; z-index:27">
<div class="wpmd">
<div><font face="Times New Roman" class="ws7">(YYYY-MM-DD)</font></div>
</div></div>

<div id="text19" style="position:absolute; overflow:hidden; left:704px; top:460px; width:33px; height:16px; z-index:28">
<div class="wpmd">
<div><font face="Times New Roman" class="ws7">(in- Kg)</font></div>
</div></div>

<div id="text20" style="position:absolute; overflow:hidden; left:375px; top:858px; width:90px; height:21px; z-index:29">
<div class="wpmd">
<div><font face="Times New Roman" class="ws12"><B>Username</B></font></div>
</div></div>

<div id="text21" style="position:absolute; overflow:hidden; left:376px; top:899px; width:90px; height:21px; z-index:31">
<div class="wpmd">
<div><font face="Times New Roman" class="ws12"><B>Password</B></font></div>
</div></div>

<div id="text22" style="position:absolute; overflow:hidden; left:377px; top:938px; width:135px; height:21px; z-index:32">
<div class="wpmd">
<div><font face="Times New Roman" class="ws12"><B>Confirm Password</B></font></div>
</div></div>

<div id="text23" style="position:absolute; overflow:hidden; left:356px; top:233px; width:230px; height:22px; z-index:35">
<div class="wpmd">
<div><font color="#000000" face="Colonna MT" class="ws18"><B>Donor Information</B></font></div>
</div></div>

<div id="image8" style="position:absolute; overflow:hidden; left:324px; top:227px; width:28px; height:30px; z-index:36"><img src="Image/Blood_Bank/add_buddy_icon.gif" alt="" title="" border=0 width=28 height=30></div>

<div id="image9" style="position:absolute; overflow:hidden; left:333px; top:803px; width:26px; height:34px; z-index:37"><img src="Image/Blood_Bank/icon-lock.gif" alt="" title="" border=0 width=26 height=34></div>

<div id="image10" style="position:absolute; overflow:hidden; left:239px; top:157px; width:773px; height:32px; z-index:38"><img src="Image/Blood_Bank/bg_head_inner.gif" alt="" title="" border=0 width=773 height=32></div>

<div id="roundrect2" style="position:absolute; overflow:hidden; left:324px; top:800px; width:312px; height:40px; z-index:39"><img border=0 width="100%" height="100%" alt="" src="Image/Blood_Bank/RectShape1.gif"></div>

<div id="roundrect3" style="position:absolute; overflow:hidden; left:320px; top:226px; width:259px; height:36px; z-index:40"><img border=0 width="100%" height="100%" alt="" src="Image/Blood_Bank/RectShape1.gif"></div>


<%
                    Connection con = null;
                    Statement stat = null;
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dthree", "root", "root");

                    } catch (Exception e) {
                        out.println("Exception First");
                    }

                    String sql;
                    String Name, Gender, Bg, Dob, Weight, City, Dold, MobNo, PhNo, EId, Address, Uname, Pass, CPass;


                    Name = request.getParameter("formtext1");
                    Gender = request.getParameter("formselect2");
                    Bg = request.getParameter("formselect1");
                    Dob = request.getParameter("formtext3");
                    Weight = request.getParameter("formtext2");
                    Dold = request.getParameter("formtext4");
                    City = request.getParameter("formtext5");
                    MobNo = request.getParameter("formtext7");
                    PhNo = request.getParameter("formtext6");
                    EId = request.getParameter("formtext8");
                    Address = request.getParameter("textarea1");
                    Uname = request.getParameter("formtext9");
                    Pass = request.getParameter("formtext10");
                    CPass = request.getParameter("formtext11");
                  
                                               
                    
                    
                    if(Dob!=null)
                {
                    try {
                        stat = con.createStatement();
                        sql = "insert into bloodregister values( '" + Name + "', '" + Gender + "','" + Bg + "','" + Dob + "'," + Weight + ",'" + Dold + "','" + City + "'," + MobNo + "," + PhNo + ",'" + EId + "','" + Address + "','" + Uname + "','" + Pass + "','" + CPass + "')";
                        stat.executeUpdate(sql);

                    } catch (Exception e) {
                        out.println(e);
                    
                   }
                }
             
%>


<div style="padding-top:100px">
<%@include file="Footer.html"%>
</div>
</body>
</html>
