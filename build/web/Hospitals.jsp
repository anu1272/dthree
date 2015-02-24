<%-- 
    Document   : Hospitals
    Created on : Mar 26, 2013, 2:34:43 AM
    Author     : Hrishikesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.html"%>
<%@include file="Footer.html"%>
<%@page import=" java.sql.*;" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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

<style type="text/css">
a.style1:link{color:#FFFFFF;text-decoration: none;}
a.style1:visited{color:#FFFFFF;text-decoration: none;}
a.style1:hover{color:#FFFFFF;text-decoration: none;}
a.style1:active{color:#FFFFFF;text-decoration: none;}
</style>

<style type="text/css">
div#container
{
	position:relative;
	width: 1077px;
	margin-top: 0px;
	margin-left: auto;
	margin-right: auto;
	text-align:left;
}
body {text-align:center;margin:0}
</style>

</head>
<body>
<div id="container">
<div id="shape1" style="position:absolute; overflow:hidden; left:31px; top:137px; width:1013px; height:810px; z-index:0"><img border=0 width="100%" height="100%" alt="" src="Image/Hospital/shapeBlue.gif"></div>

<div id="image6" style="position:absolute; overflow:hidden; left:35px; top:143px; width:225px; height:211px; z-index:1"><img src="Image/Hospital/pic.png" alt="" title="" border=0 width=225 height=211></div>

<div id="image7" style="position:absolute; overflow:hidden; left:264px; top:141px; width:782px; height:214px; z-index:2"><img src="Image/Hospital/Hb.jpg" alt="" title="" border=0 width=782 height=214></div>

<div id="roundrect1" style="position:absolute; overflow:hidden; left:42px; top:514px; width:263px; height:406px; z-index:3"><img border=0 width="100%" height="100%" alt="" src="Image/Hospital/shapeRed.gif"></div>

<div id="image1" style="position:absolute; overflow:hidden; left:771px; top:586px; width:268px; height:338px; z-index:24"><img src="Image/Hospital/Hospital.jpg" alt="" title="" border=0 width=268 height=338></div>

<form action="HospitalTablePrint.jsp" method="post" name="form1" style="margin:0px">

    <select name="formselect1" style="position:absolute;left:350px;top:427px;width:192px;z-index:13">
<option value="">Select Area</option>
            <option value= "Bhanwarkua">Bhanwarkua</option>
           <option value= "Malwa Mill">Malwa Mill</option>
           <option value= "Rajmohalla">Rajmohalla</option>
           <option value= "Vijay nagar">Vijay nagar</option>
           <option value= "Y.N.Road">Y.N.Road</option>
           <option value= "Jawahar Marg">Jawahar Marg</option>
           <option value= "Saket Nagar">Saket Nagar</option>
           <option value= "Palasia">Palasia</option>
           <option value= "Geeta Bhavan">Geeta Bhavan</option>
           <option value= "Palasia">Palasia</option>
           <option value= "Navlakha">Navlakha</option>
           <option value= "Annapurna Road">Annapurna Road</option>
           <option value= "Rajendra Nagar">Rajendra Nagar</option>
           <option value= "Rau">Rau</option>
           <option value= "LIG">LIG</option>
           <option value= "Patnipura">Patnipura</option>
           <option value= "Pardesipura">Pardesipura</option>
           <option value= "Dewas Road">Dewas Road</option>
           <option value= "Ring Road">Ring Road</option>
           <option value= "Rajwada">Rajwada</option>
           <option value= "Kalani Nagar">Kalani Nagar</option>
            <option value= "Ujjain Road">Ujjain Road</option>
</select>

<select name="formselect2" style="position:absolute;left:350px;top:467px;width:192px;z-index:8">
<option value="">Select Specialization</option>			  			
                <option value="Anatomy"> Anatomy</option>
                  <option value="Cardio Thoracic Vascular Surgery"> Cardio Thoracic Vascular Surgery</option>
        
                  <option value="Cardio Thoracic Surgery"> Cardio Thoracic Surgery</option>
        
                  <option value="Cardiology"> Cardiology</option>
        
                  <option value="Clinical Haematology"> Clinical Haematology</option>
        
                  <option value="Clinical Pharmacology"> Clinical Pharmacology</option>
        
                  <option value="Community Dentistry"> Community Dentistry</option>
        
                  <option value="Community Health Administration"> Community Health Administration</option>
        
                  <option value="ommunity Medicine"> Community Medicine</option>
        
                  <option value="Cosmetic Dentistry"> Cosmetic Dentistry</option>
        
                  <option value="Dental Implantology"> Dental Implantology</option>
              
                  <option value="Geriatrics"> Geriatrics</option>
        
                  <option value="Health Administration"> Health Administration</option>
        
                  <option value="Hospital Administration"> Hospital Administration</option>
        
                  <option value="Lab Medicine"> Lab Medicine</option>
        
                  <option value="Microbiology"> Microbiology</option>
        
                  <option value="Neuro Surgery"> Neuro Surgery</option>
        
                  <option value="Neurology"> Neurology</option>
        
                  <option value="Physiology"> Physiology</option>
        
                  <option value="Physiotherapy"> Physiotherapy</option>
        
                  <option value="Cosmetic Plastic Surgery"> Cosmetic Plastic Surgery</option>
        
                  <option value="Prosthodontics"> Prosthodontics</option>
        
                  <option value="Psychiatry"> Psychiatry</option>
        
                  <option value="Pulmonary Medicine"> Pulmonary Medicine</option>
        
                  <option value="Radio Diagnosis"> Radio Diagnosis</option>
                      
                  <option value="Urology"> Urology</option>
        
                  <option value="Vascular Surgery"> Vascular Surgery</option>
        
                  <option value="Venerology"> Venerology</option>
        
                  <option value="Accupressure"> Accupressure</option>
        
                  <option value="Alternative Medicine"> Alternative Medicine</option>
        
                  <option value="Andrology"> Andrology</option>
        
                  <option value="Dentist"> Dentist</option>
        
                  <option value="Homeopathy"> Homeopathy</option>
        
                  <option value="Ayurvedic"> Ayurvedic</option>
        
                  <option value=" Sonography"> Sonography</option>
        
                  <option value="Sexual Guidance Counselling; AIDS Education"> Sexual Guidance Counselling; AIDS Education</option>
        
                  <option value="General Practitioner-Sexuality Guidance Counseling"> General Practitioner-Sexuality Guidance Counseling</option>
        
                  <option value="Clinical Nutritionist"> Clinical Nutritionist</option>
        
                  <option value="Neuropsychiatry"> Neuropsychiatry</option>
        
                  <option value="Sexology"> Sexology</option>
</select>
    
<select name="formselect3" style="position:absolute;left:350px;top:507px;width:192px;z-index:9">
<option value="1">Select Name</option>
<option value="Amol Hospital P Ltd"> Amol Hospital P Ltd</option>
<option value="AnandHospital and Research Centre">AnandHospital and Research Centre</option>
<option value="Ankur Hospital P Ltd">Ankur Hospital P Ltd</option>
<option value="Arpan Nursing Home">Arpan Nursing Home</option>
<option value="Arihant Hospital">Arihant Hospital</option>
<option value="Aurbhindo Hospital">Aurbhindo Hospital</option>
<option value="Bafna Hospital and Orth Research Centre">Bafna Hospital and Orth Research Centre</option>
<option value="Bapat Hospital and Lapro. Surgery Ctr">Bapat Hospital and Lapro. Surgery Ctr</option>
<option value="Bhandari Nursing Home">Bhandari Nursing Home</option>
<option value="Charak Hospital">Charak Hospital</option>
<option value="Chl Apollo Hospitals">Chl Apollo Hospitals</option>
<option value="Choithram Hospital and Researchcentre">Choithram Hospital and Researchcentre</option>
<option value="City Orthopaedic and Acident Hospital">City Orthopaedic and Acident Hospital</option>
<option value="City Nursing Home">City Nursing Home</option>
<option value="Ctr For Chronic Disease and Research">Ctr For Chronic Disease and Research</option>
<option value="Cloth Market Hospital">Cloth Market Hospital</option>
<option value="Chacha Nehru Bal Chiktsalaya">Chacha Nehru Bal Chiktsalaya</option>
<option value="Curewell Hospital P.Ltd">Curewell Hospital P.Ltd</option>
<option value="Dental Hospital">Dental Hospital</option>
<option value="Devi Ahilya Hospital and Research">Devi Ahilya Hospital and Research</option>
<option value="District Hospital">District Hospital</option>
<option value="Gokuldas Hospital Ltd">Gokuldas Hospital Ltd</option>
<option value="Goyal Maternity Nursing Home">Goyal Maternity Nursing Home</option>
<option value="Govind Ram Sakseria Hospital">Govind Ram Sakseria Hospital</option>
<option value="Govt.Asthang Ayu.Coll & Hospital">Govt.Asthang Ayu.Coll & Hospital</option>
<option value="Govt.Ayurvedic College & Hospital">Govt.Ayurvedic College & Hospital</option>
<option value="Govt.College of Dentistry">Govt.College of Dentistry</option>
<option value="Govt.Poly Clinic">Govt.Poly Clinic</option>
<option value="Gurjar Hospital and Endoscopy Cntr Pltd">Gurjar Hospital and Endoscopy Cntr Pltd</option>
<option value="Geeta Bhavan Hospital">Geeta Bhavan Hospital</option>
<option value="Grt Kailash Nur.Home/Eye Hospital">Grt Kailash Nur.Home/Eye Hospital</option>
<option value="Hardia Hospital">Hardia Hospital</option>
<option value="H J Memorial Hospital">H J Memorial Hospital</option>
<option value="Indore Kidney Center">Indore Kidney Center</option>
<option value="Indore Paraspar Jila Sahakari Hosp">Indore Paraspar Jila Sahakari Hosp</option>
<option value="Life Line Hospital">Life Line Hospital</option>
<option value="M.Y.Hospital">M.Y.Hospital</option>
<option value="Mayur Hospital">Mayur Hospital</option>
<option value="Medicare Centre">Medicare Centre</option>
<option value="MGM Medical College">MGM Medical College</option>
<option value="Nobel Hospital">Nobel Hospital</option>
<option value="Pooja Hospital">Pooja Hospital</option>
<option value="Pushpkunj Hospital">Pushpkunj Hospital</option>
<option value="Robert Nursing Home">Robert Nursing Home</option>
<option value="Sarvoday Nursing Home">Sarvoday Nursing Home</option>
<option value="Shri Arbindo Inti Of Medical Scien.">Shri Arbindo Inti Of Medical Scien.</option>
<option value="Suyash Hospital (P) Ltd">Suyash Hospital (P) Ltd</option>
<option value="Unique Super Speciality Centre">Unique Super Speciality Centre</option>
</select>
<input name="formbutton1" type="submit" value="Search" style="position:absolute;left:407px;top:543px;z-index:13">

</form>


<form action="ChemistTablePrint" method="post">
<select name="formselect4" style="position:absolute;left:749px;top:425px;width:192px;z-index:10">
</select>
<select name="formselect5" style="position:absolute;left:749px;top:465px;width:192px;z-index:11">
</select>
<select name="formselect6" style="position:absolute;left:749px;top:506px;width:192px;z-index:12">
</select>
<input name="formbutton2" type="submit" value="Search" style="position:absolute;left:811px;top:543px;z-index:14">

</form>

<div id="text2" style="position:absolute; overflow:hidden; left:351px; top:382px; width:201px; height:32px; z-index:6">
<div class="wpmd">
<div><font face="Corbel" class="ws20"><B>Search Hospital</B></font></div>
</div></div>

<div id="text1" style="position:absolute; overflow:hidden; left:750px; top:380px; width:201px; height:32px; z-index:7">
<div class="wpmd">
<div><font face="Corbel" class="ws20"><B>Search Chemist</B></font></div>
</div></div>

<div id="text3" style="position:absolute; overflow:hidden; left:314px; top:606px; width:453px; height:362px; z-index:15">
<div class="wpmd">
<div><font face="Corbel">Welcome To Our Website DThree.com !</font></div>
<div><font face="Corbel">Search Hospital does assist you in the pursuit of a perfect medical and health institution across your city, Area and Speciality. Certainly, this concept is unique and new in the history of internet. This site is solely intended to enlist all the hospitals, which are eminent and particularly known for their unparalleled and top-notch medical and health services.</font></div>
<div><font face="Corbel"><BR></font></div>
<div><font face="Corbel">All the top Hospitals in India are mentioned in our data and it’s certainly possible to search the hospitals with the treatment name, which you’re seeking.</font></div>
<div><font face="Corbel"><BR></font></div>
<div><font face="Corbel">As a layman, we are not aware of the hospitals and treatment facilities they offer. At the time of urgency, we get nervous and end up at the wrong hospital. We waste our precious time and money and most importantly the patient is the worst sufferer. To help you in avoiding this situation we offer you our site DThree.com .&nbsp; </font></div>
<div><font face="Corbel"><BR></font></div>
<div><font face="Corbel">How To Search :</font></div>
<div><font face="Corbel"></font></div>
<div><font face="Corbel">1. City --&gt; Area--&gt;Speciality--&gt;Hospital Name</font></div>
<div><font face="Corbel">2. City --&gt; Area--&gt; Chemist Name</font></div>
<div><font face="Corbel">3. Direct : Click at Hospital List. Alphabetically search for Hospital select alphabet (first alphabet of city).</font></div>
</div></div>

<script type="text/javascript" src="js/BloodDonationMaster.js"></script>
<script type="text/javascript">
   function callValidate()
   {
         if(validate('txt_name1','F'))
               {
                 if(validate('txt_email','A'))
                  {
                      if(validate('txt_que','S'))
                       {
                        return true;
                       }
                  }
               }
             
                 return false;
        }
</script>


<div id="text4" style="position:absolute; overflow:hidden; left:84px; top:430px; width:187px; height:90px; z-index:16">
<div class="wpmd">
<div><font color="#800000" face="Forte" class="ws20"><B>Question to be</B></font></div>
<div><font color="#800000" face="Forte" class="ws20"><B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Asked</B></font></div>
</div></div>

<form name="first" action="" method="post" onsubmit="return callValidate();">
    

<input id="txt_name1" name="formtext1" type="text" style="position:absolute;width:200px;left:84px;top:581px;z-index:20">
<input id="txt_email" name="formtext2" type="text" style="position:absolute;width:200px;left:85px;top:662px;z-index:21">
<textarea id="txt_que" name="textarea1" style="position:absolute;left:82px;top:732px;width:200px;height:115px;z-index:22"></textarea>
    
<div id="text6" style="position:absolute; overflow:hidden; left:59px; top:551px; width:55px; height:33px; z-index:17">
<div class="wpmd">
<div><font face="Forte" class="ws14">Name</font></div>
</div></div>

<div id="text7" style="position:absolute; overflow:hidden; left:47px; top:625px; width:88px; height:33px; z-index:18">
<div class="wpmd">
<div><font face="Forte" class="ws14">Email ID</font></div>
</div></div>

<div id="text8" style="position:absolute; overflow:hidden; left:57px; top:703px; width:83px; height:33px; z-index:19">
<div class="wpmd">
<div><font face="Forte" class="ws14">Question</font></div>
</div></div>

<input name="formbutton3" type="submit" value="Submit" onclick="return callValidate();" style="position:absolute;left:127px;top:874px;z-index:23">


</div>
<%
Connection con=null;
                        Statement stat=null;
                        ResultSet rs=null;


                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dthree", "root", "root");
                            stat = con.createStatement();
                            }
                        catch(Exception e)
                        {
                        }


                        String sql1;
                        String Name,Email,Query;


                        Name =request.getParameter("formtext1");
                        Email = request.getParameter("formtext2");
                        Query = request.getParameter("textarea1");

                        if(Name!= null && Email!= null && Query!= null)
                        {
                                try
                                {
                                stat=con.createStatement();
                                sql1= "insert into getassistance values( '" + Name + "', '"+Email+"','"+ Query+"')";
                                stat.executeUpdate(sql1);
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
