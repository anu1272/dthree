<%-- 
    Document   : BloodTablePrint
    Created on : Apr 5, 2013, 12:14:33 AM
    Author     : Hrishikesh
--%>

<%@include file="Header.html"%>
<%@include file="Footer.html"%>
<%@page import=" java.sql.*;" %>
<html>
<head>
<title>Untitled</title>
<meta name="generator" content="Web Page Maker">
<style type="text/css">
div#container
{
	position:relative;
	width: 1096px;
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
<div id="image1" style="position:absolute; overflow:hidden; left:43px; top:158px; width:1010px; height:364px; z-index:0"><img src="Image/Blood_Bank/bloodsearch.jpg" alt="" title="" border=0 width=1010 height=364></div>
</div>

<div style="padding-top:530px; padding-left:32px">
         <%
                       Connection con=null;
                        Statement stat=null;
                       ResultSet rs=null;

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dthree", "root", "root");
                            stat = con.createStatement();                            

                            String choice1 = request.getParameter("formselect1");
                            String choice2 = request.getParameter("formselect2");
                            String sql;
                            
                            sql = "(select * from bloodregister where ";

                            if (choice2 != null && !choice2.equals("") && (choice1 != null && !choice1.equals(""))) {
                                sql = sql + "BloodGroup like '" + choice1 + "' and Gender like '" + choice2 + "'";
                            } else if (choice1 != null && !choice1.equals("")) {
                                sql = sql + "BloodGroup like '" + choice1 + "'";
                            } else if (choice2 != null && !choice2.equals("")) {
                                sql = sql + "Gender like '" + choice2 + "'";

                             }
                            sql = sql + ")";

                            rs = stat.executeQuery(sql);
                            out.print("<table width=500 border=3px  cellspacing=0 cellpadding=15 bordercolor=white>");
                            out.print("<br>");
                            out.print("<tr bgcolor=#9191FE>");
                            out.print("<td><b>Donor Name</b></td>");
                            out.print("<td><b>Gender</b></td>");
                            out.print("<td><b>Blood Group</b></td>");
                            out.print("<td><b>Date of Birth</b></td>");
                            out.print("<td><b>Weight</b></td>");
                            out.print("<td><b>Date of Last Donated</b></td>");
                            out.print("<td><b>City</b></td>");
                            out.print("<td><b>Mobile Number</b></td>");
                            out.print("<td><b>Phone Number</b></td>");
                            out.print("<td><b>Email ID</b></td>");
                            out.print("<td><b>Address</b></td>");
                            out.print("</tr>");
                            out.print("<tr>");

                                while(rs.next()) {
                                out.print("<tr bgcolor=#C3C1C1>");
                                String id = rs.getString("Donor Name");
                                out.print("<td align=center >" + id + "</td>");
                                String name = rs.getString("Gender");
                                out.print("<td align=center>" + name + "</td>");
                                String pno = rs.getString("BloodGroup");
                                out.print("<td align=center>" + pno + "</td>");
                                String mno = rs.getString("DateofBirth");
                                out.println("<td align=center>" + mno + "</td>");
                                String email = rs.getString("Weight");
                                out.print("<td align=center>" + email + "</td>");
                                String cadd = rs.getString("DateofLastDonation");
                                out.print("<td align=center >" + cadd + "</td>");
                                String hadd = rs.getString("City");
                                out.println("<td align=center>" + hadd + "</td>");
                                String sp = rs.getString("MobileNumber");
                                out.print("<td align=center>" + sp + "</td>");
                                String dg = rs.getString("PhoneNumber");
                                out.print("<td align=center>" + dg + "</td>");
                                String vtime = rs.getString("EmailID");
                                out.print("<td align=center>" + vtime + "</td>");
                                String add = rs.getString("Address");
                                out.print("<td align=center>" + add + "</td>");
                                out.print("</tr>");
                            }
                            out.print("</tr></table>");
                            con.close();
                            stat.close();
                        } catch (Exception e) {
                            out.println(e);
                        }

%>
</div>
</body>
</html>
