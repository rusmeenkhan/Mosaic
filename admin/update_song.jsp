<%-- 
    Document   : update
    Created on : 22 Dec, 2018, 5:12:50 PM
    Author     : rusmeen khan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
                               String songid=request.getParameter("songid");
                                String email=null;
                                Cookie c[]=request.getCookies();
                                for(int i=0;i<c.length;i++)
                                {
                                    if(c[i].getName().equals("user"))
                                    {
                                        email=c[i].getValue();
                                        break;
                                    }
                                }
                                     try
                                        {
                                            String tittle=request.getParameter("tittle");
                                            String Artist=request.getParameter("Artist");
                                            String Description=request.getParameter("Description");
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mp3","root",""); 
                                            Statement st = cn.createStatement();
                                            st.execute("update song set tittle='"+tittle+"',Artist='"+Artist+"',Description='"+Description+"' where songid='"+songid+"'");
                                            response.sendRedirect("admin_main.jsp?updatesuccessfull");
                                            cn.close();
                                        }
                                        catch(Exception e)
                                        {
                                            out.println(e.getMessage());
                                        }  
                                %>
    </body>
</html>
