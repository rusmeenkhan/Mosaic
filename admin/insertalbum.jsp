
<%@page import="java.sql.*,java.util.*"%>

<%
     String email=null;
     try{
        Cookie c[]=request.getCookies();
        for(int i=0;i<c.length;i++){
            if(c[i].getName().equals("admin")){
                email=c[i].getValue();
                break;
            }
        
        }
            if(request.getParameter("albumname")==null)
               {
                        response.sendRedirect("album.jsp?allfieldrequired");
                    }
            else{
                  try{   
                            
                            String albumid="";
                            LinkedList l=new LinkedList();
                            for(char ch='a';ch<='z';ch++)
                            {
                                l.add(ch+"");
                            }
                             for(char ch='A';ch<='Z';ch++)
                            {
                                l.add(ch+"");
                            }
                              for(char ch='0';ch<='9';ch++)
                            {
                                l.add(ch+"");
                            }
                            Collections.shuffle(l);
                             for(int i=1;i<=5;i++)
                            {
                               albumid+=l.get(i);;

                            }
                                      java.util.Date d= new java.util.Date();
                                      String Date=d.toString();
                                      String albumname=request.getParameter("albumname");
                                      Class.forName("com.mysql.jdbc.Driver");
                                      Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mp3","root","");
                                      PreparedStatement ps=cn.prepareStatement("insert into album (albumid,albumname,Date) values(?,?,?) ");
                                      ps.setString(1,albumid);
                                      ps.setString(2,albumname);
                                      ps.setString(3,Date);
                                      ps.execute();
                                      cn.close();
                                      response.sendRedirect("image_upload.jsp?albumid="+albumid);
                }
                catch(Exception e)
                {
                    out.println(e.getMessage());
                }
             }

 }
        catch(Exception e)
                {
                out.println(e.getMessage());
                }

        %>
    