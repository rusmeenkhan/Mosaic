
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
       /* if(email==null&&session.getAttribute(email)==null){
            out.println(email);
            response.sendRedirect("admin_index.jsp");
        }
        else
          {
    */
            if(request.getParameter("tittle")==null||request.getParameter("Artist")==null||request.getParameter("Description")==null)
               {
                        response.sendRedirect("upload.jsp?allfieldrequired");
                    }
            else{
                    try{   
                                    String songid="";
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
                                       songid+=l.get(i);
                                    }
                                     
                                              java.util.Date d= new java.util.Date();
                                              String Date=d.toString();
                                              String tittle=request.getParameter("tittle");
                                              String Description=request.getParameter("Description");
                                              String Artist=request.getParameter("Artist");
                                              String albumname=request.getParameter("albumname");
                                              String category=request.getParameter("category");
                                              out.println(category);
                                              Class.forName("com.mysql.jdbc.Driver");
                                              Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mp3","root","");
                                              Statement st=cn.createStatement();
                                              ResultSet rs=st.executeQuery("select * from category where category='"+category+"'");
                                              if(rs.next())
                                              {
                                                  out.println("hello");
                                                String category_code=rs.getString("category_id");
                                                ResultSet rs1=st.executeQuery("select * from album where albumname='"+albumname+"'");
                                                if(rs1.next())
                                                {
                                                    String albumid=rs1.getString("albumid");
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection cn1=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mp3","root","");
                                                    PreparedStatement ps=cn1.prepareStatement("insert into song (tittle,Artist,Description,songId,date,albumid,albumname,category,category_code) values(?,?,?,?,?,?,?,?,?)");
                                                    ps.setString(1,tittle);
                                                    ps.setString(2,Artist);
                                                    ps.setString(3,Description);
                                                    ps.setString(4,songid);
                                                    ps.setString(5,Date);
                                                    ps.setString(6,albumid);
                                                    ps.setString(7,albumname);
                                                    ps.setString(8,category);
                                                    ps.setString(9,category_code);
                                                    ps.execute();
                                                    cn1.close();
                                                    response.sendRedirect("upload_song.jsp?albumid="+albumid);
                                                }
                                              }
                                              cn.close();
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
    