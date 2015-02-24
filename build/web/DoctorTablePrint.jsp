<%--
    Document   : DoctorTablePrint
    Created on : Mar 24, 2013, 11:04:03 AM
    Author     : Hrishikesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.html"%>
<%@include file="Footer.html"%>
<%@page import=" java.sql.*;" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<style type="text/css">
        div#container
{
	position:relative;
	width: 1083px;
	margin-top: 0px;
	margin-left: auto;
	margin-right: auto;
	text-align:left;
}
body {text-align:center;margin:0}
</style>
<body>

<div id="container">
<div id="image1" style="position:absolute; overflow:hidden; left:34px; top:160px; width:676px; height:338px; z-index:0"><img src="Image/Doctor/d1.jpg" alt="" title="" border=0 width=676 height=338></div>

<div id="image4" style="position:absolute; overflow:hidden; left:711px; top:154px; width:338px; height:366px; z-index:1"><img src="Image/Doctor/Medical.jpg" alt="" title="" border=0 width=338 height=366></div>

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

                            String choice1 = request.getParameter("formtext3");
                            String choice2 = request.getParameter("formselect1");
                            String sql;


                            sql = "(select * from doctormaster where ";

                            if (choice2 != null && !choice2.equals("") && (choice1 != null && !choice1.equals(""))) {
                                sql = sql + "name like '" + choice1 + "' OR specialization like '" + choice2 + "'";
                            } else if (choice1 != null && !choice1.equals("")) {
                                sql = sql + "Name like '" + choice1 + "'";
                            } else if (choice2 != null && !choice2.equals("")) {
                                sql = sql + "Specialization like '" + choice2 + "'";

                             }

                            sql = sql + ")";
                            rs = stat.executeQuery(sql);
                            out.print("<table width=500 border=3px  cellspacing=0 cellpadding=15 bordercolor=white>");
                            out.print("<br>");
                            out.print("<tr bgcolor=#9191FE>");
                            out.print("<td><b>ID Number</b></td>");
                            out.print("<td><b>Name</b></td>");
                            out.print("<td><b>Phone Number</b></td>");
                            out.print("<td><b>Mobile Number</b></td>");
                            out.print("<td><b>Email ID</b></td>");
                            out.print("<td><b>Clinic Address</b></td>");
                            out.print("<td><b>Home Address</b></td>");
                            out.print("<td><b>Specialization</b></td>");
                            out.print("<td><b>Degree</b></td>");
                            out.print("<td><b>Visiting Time</b></td>");
                            out.print("</tr>");
                            out.print("<tr>");
                            //out.print("<td>");

                            while (rs.next()) {
                                out.print("<tr bgcolor=#C3C1C1>");
                                String id = rs.getString("ID Number");
                                out.print("<td align=center >" + id + "</td>");
                                String name = rs.getString("Name");
                                out.print("<td align=center>" + name + "</td>");
                                String pno = rs.getString("Phone Number");
                                out.print("<td align=center>" + pno + "</td>");
                                String mno = rs.getString("Mobile Number");
                                out.println("<td align=center>" + mno + "</td>");
                                String email = rs.getString("E-mail ID");
                                out.print("<td align=center>" + email + "</td>");
                                String cadd = rs.getString("Clinic Address");
                                out.print("<td align=center >" + cadd + "</td>");
                                String hadd = rs.getString("Home Address");
                                out.println("<td align=center>" + hadd + "</td>");
                                String sp = rs.getString("Specialization");
                                out.print("<td align=center>" + sp + "</td>");
                                String dg = rs.getString("Degree");
                                out.print("<td align=center>" + dg + "</td>");
                                String vtime = rs.getString("Visiting Time");
                                out.print("<td align=center>" + vtime + "</td>");
                                out.print("</tr>");
                            }
                            out.print("</tr></table></left>");
                            con.close();
                            stat.close();
                        } catch (Exception e) {
                        }

%>
</div>
</body>
</html>
