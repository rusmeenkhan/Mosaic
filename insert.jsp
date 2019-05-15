<%@page import="java.sql.*,java.util.*"%>
<%
         String email=request.getParameter("email");
         String mob=request.getParameter("mob");
         Class.forName("com.mysql.jdbc.Driver");
         Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mp3","root",""); 
         Statement st = cn.createStatement();
         ResultSet rs=st.executeQuery("select * from user where email='"+email+"' OR mob='"+mob+"'");
         if(!rs.next())
              {
                   if(request.getParameter("fname")==null||request.getParameter("lname")==null||request.getParameter("mob")==null||request.getParameter("email")==null||request.getParameter("pass")==null||request.getParameter("repass")==null)
                     {
                        response.sendRedirect("index.jsp?allfieldrequired");
                     }
                  else
                     {
                        if(request.getParameter("pass").equals(request.getParameter("repass")))
                              {            
                                    try
                                          {   
                                                String s="";
                                                LinkedList l=new LinkedList();
                                                for(char c='a';c<='z';c++)
                                                  {
                                                    l.add(c+"");
                                                   }
                                                 for(char c='A';c<='Z';c++)
                                                  {
                                                    l.add(c+"");
                                                   }
                                                  for(char c='0';c<='9';c++)
                                                  {
                                                    l.add(c+"");
                                                  }
                                                Collections.shuffle(l);
                                                 for(int i=1;i<=5;i++)
                                                  {
                                                   s+=l.get(i);
                                                 }
                                                         String fname=request.getParameter("fname");
                                                         String lname=request.getParameter("lname");
                                                         String pass=request.getParameter("pass");                     
                                                         Class.forName("com.mysql.jdbc.Driver");
                                                         Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mp3","root",""); 
                                                         PreparedStatement ps=cn1.prepareStatement("insert into user (fname,lname,mob,email,pass,ucode) values(?,?,?,?,?,?)");
                                                         ps.setString(1,fname);
                                                         ps.setString(2,lname);
                                                         ps.setString(3,mob);
                                                         ps.setString(4,email);
                                                         ps.setString(5,pass);
                                                         ps.setString(6,s);
                                                         ps.execute();
                                                         cn1.close();
                                                         response.sendRedirect("index.jsp?success=1");
                                                }
                                                catch(Exception e)
                                                {
                                                    out.println(e.getMessage());
                                                }
                                    }
                                else
                                   {
                                        response.sendRedirect("index.jsp?retypePassnotMatch");
                                   }
                     }
                   cn.close();
              }
         else
         {    
             response.sendRedirect("index.jsp?Email/MobileAlreadyRegistered");
         }

    %>