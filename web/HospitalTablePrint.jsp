<%-- 
    Document   : HospitalTablePrint
    Created on : Mar 24, 2013, 11:34:43 AM
    Author     : Hrishikesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@include file="Footer.html"%>
<%@page import=" java.sql.*;" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Untitled</title>
    </head>
    <body>
       
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
                            String choice3 = request.getParameter("formselect3");
                            String sql;
                            
                            sql = "(select * from hospitalsearch where ";

                            if ((choice1 != null && !choice1.equals("")) && choice2 != null && !choice2.equals("") && choice3 != null && !choice3.equals(""))
                                {
                                sql = sql + "(Address like '%" + choice1 + "%' OR Specialization like '%" + choice2 + "%' OR Name like '%" + choice3 + "%')";
                                 }
                            else if (choice1 != null && !choice1.equals(""))
                                {
                                sql = sql + "(Address like '%" + choice1 + "%')";
                                }
                            else if (choice2 != null && !choice2.equals(""))
                                {
                                sql = sql + "Specialization like '%" + choice2 + "%'";
                                }
                            else if (choice3 != null && !choice3.equals(""))
                                {
                                sql = sql + "(Name like '%"+ choice3 +"%')";
                                }
                            sql = sql + ")";

                            rs = stat.executeQuery(sql);
                            out.print("<table width=500 border=3px  cellspacing=0 cellpadding=15 bordercolor=white>");
                            out.print("<br>");
                            out.print("<tr bgcolor=#9191FE>");
                            out.print("<td><b>Hospital Name</b></td>");
                            out.print("<td><b>Address</b></td>");
                            out.print("<td><b>Number Of Doctor</b></td>");
                            out.print("<td><b>Specialization</b></td>");
                            out.print("<td><b>Contact Number</b></td>");
                            out.print("<td><b>Email ID</b></td>");
                            out.print("<td><b>About Hospital</b></td>");
                            out.print("</tr>");
                            out.print("<tr>");

                                while(rs.next()) {
                                out.print("<tr bgcolor=#C3C1C1>");
                                String id = rs.getString("Name");
                                out.print("<td align=center >" + id + "</td>");
                                String name = rs.getString("Address");
                                out.print("<td align=center>" + name + "</td>");
                                String pno = rs.getString("No_Of_Doctor");
                                out.print("<td align=center>" + pno + "</td>");
                                String mno = rs.getString("Specialization");
                                out.println("<td align=center>" + mno + "</td>");
                                String email = rs.getString("ContactNo");
                                out.print("<td align=center>" + email + "</td>");
                                String cadd = rs.getString("EmailID");
                                out.print("<td align=center >" + cadd + "</td>");
                                String hadd = rs.getString("About_Hospital");
                                out.println("<td align=center>" + hadd + "</td>");
                                out.print("</tr>");
                            }
                            out.print("</tr></table>");
                            con.close();
                            stat.close();
                        } catch (Exception e) {
                            out.println(e);
                        }

%>

    </body>
</html>
