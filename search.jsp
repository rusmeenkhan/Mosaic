<%@page import="java.sql.*" %>
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' media="all" />
<!-- //bootstrap -->
<link href="css/dashboard.css" rel="stylesheet">
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
<script src="js/jquery-1.11.1.min.js"></script>
<!--start-smoth-scrolling-->
<!-- fonts -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>

     <% 
      try{
       String email=null;
       String item=request.getParameter("id");
        Cookie c[]=request.getCookies();
        for(int i=0;i<c.length;i++){
            if(c[i].getName().equals("user")){
                email=c[i].getValue();
                break;
            }
        }
                try{

                        Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mp3","root","");
                        Statement st=cn.createStatement();
                        String a[]=item.split(" ");
                        //String tittle=null;
                       
                       
                        String sql="select * from song  where tittle='"+item+"'";
                        for(int i=0;i<a.length;i++)
                        {
                            sql+="OR tittle like '"+a[i]+"%' OR tittle like '%"+a[i]+"' OR tittle like '%"+a[i]+"%' OR Description like '"+a[i]+"%' OR Description like '%"+a[i]+"'  OR Description like '%"+a[i]+"%' OR Artist like '"+a[i]+"%' OR Artist like '%"+a[i]+"'  OR Artist like '%"+a[i]+"%'  OR category like '"+a[i]+"%' OR category like '%"+a[i]+"'  OR category like '%"+a[i]+"%' ";
                        }
                        ResultSet rs=st.executeQuery(sql);
                         %>
              <div class="albums" id="rusmeen">
								<div class="tittle-head">
									<h3 class="tittle">Search Results <span class="new">New</span></h3>
									
									<div class="clearfix"> </div>
								</div>
                                                    <%
                                                                 String tittle=null;
                                                                 String albumid=null;
                                                                 while(rs.next())
                                                                    {   
                                                                       tittle=rs.getString("tittle");
                                                                       albumid=rs.getString("albumid");
                                                                        //String songid=rs.getString("songId");                  
                                                        %>
								<div class="col-md-3 content-grid">
                                                                    <a href="single.jsp?albumid=<%=albumid%>"> <img src="user/music/<%=albumid%>.jpg" width="180px" height="180px"><%=tittle%> </a>
								
							        </div>
										
                                                                    <%
                                                                       }
                                                                    %>
                                                                    	<div class="clearfix"> </div>
										</div>

<%
                        cn.close();
                   }
                     catch(Exception e)
                     {
                         out.println(e.getMessage());
                     }
        
      }
           catch(Exception e)
                     {
                         out.println(e.getMessage());
                     }

               %>