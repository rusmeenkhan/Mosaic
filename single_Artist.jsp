
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page import="java.sql.*"%>
<%
  String albumid=request.getParameter("albumid");
  String songid=request.getParameter("songid");
  String id=albumid+"_"+songid;
  String Artist=request.getParameter("Artist");
%>
<!DOCTYPE HTML>
<html>
<head>
<title>Mosaic a Entertainment Category Flat Bootstrap Responsive Website Template | Single:: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Mosaic Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.css" type='text/css' />
<!-- //lined-icons -->
 <!-- Meters graphs -->
<script src="js/jquery-2.1.4.js"></script>
<script>
  $(document).ready(function(){
      $(".glyphicon.glyphicon-heart").click(function(){
          var v = $(this).attr("id");  
          $.post("favorite.jsp",{id:v},function(data){
                      var abc=data.trim(); 
                      
                      if(abc=="1"){
                          $("#"+v).css("color","red");
                      }
                      else{
                          $("#"+v).css("color","black");
                      }
                     //  $(".glyphicon.glyphicon-heart").html(abc);
    });
      });
  });
</script>

</head> 
    	 <!-- /w3layouts-agile -->
 <body class="sticky-header left-side-collapsed"  onload="initMap()">
    <section>
      <!-- left side start-->
		<div class="left-side sticky-left-side">

			<!--logo and iconic logo start-->
			<div class="logo">
				<h1><a href="index.jsp">Mosai<span>c</span></a></h1>
			</div>
			<div class="logo-icon text-center">
				<a href="index.jsp">M </a>
			</div>

			<!--logo and iconic logo end-->
					<div class="left-side-inner">

				<!--sidebar nav start-->
					<ul class="nav nav-pills nav-stacked custom-nav">
						<li class="active"><a href="index.jsp"><i class="lnr lnr-home"></i><span>Home</span></a></li>
						
						<li><a href="radio.html"><i class="camera"></i> <span>Radio</span></a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal1"><i class="fa fa-th"></i><span>Apps</span></a></li>
						<li><a href="radio.html"><i class="lnr lnr-users"></i> <span>Artists</span></a></li> 
						<li><a href="browse.html"><i class="lnr lnr-music-note"></i> <span>Albums</span></a></li>						
						<li class="menu-list"><a href="browse.html"><i class="lnr lnr-indent-increase"></i> <span>Browser</span></a>  
							<ul class="sub-menu-list">
								<li><a href="browse.html">Artists</a> </li>
								<li><a href="404.html">Services</a> </li>
							</ul>
						</li>
						<li><a href="blog.html"><i class="lnr lnr-book"></i><span>Blog</span></a></li>
						<li><a href="typography.html"><i class="lnr lnr-pencil"></i> <span>Typography</span></a></li>
						<li class="menu-list"><a href="#"><i class="lnr lnr-heart"></i>  <span>My Favourities</span></a> 
							<ul class="sub-menu-list">
								<li><a href="radio.html">All Songs</a></li>
							</ul>
						</li>
						<li class="menu-list"><a href="contact.html"><i class="fa fa-thumb-tack"></i><span>Contact</span></a>
							<ul class="sub-menu-list">
								<li><a href="contact.html">Location</a> </li>
							</ul>
						</li>     
					</ul>
				<!--sidebar nav end-->
			</div>
		</div>
		 	 <!-- /w3l-agile -->
		<!-- left side end-->
				<!-- app-->
			<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog facebook" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body">
							<div class="app-grids">
								<div class="app">
						<div class="col-md-5 app-left mpl">
							<h3>Mosaic mobile app on your smartphone!</h3>
							<p>Download and Avail Special Songs Videos and Audios.</p>
							<div class="app-devices">
								<h5>Gets the app from</h5>
								<a href="#"><img src="images/1.png" alt=""></a>
								<a href="#"><img src="images/2.png" alt=""></a>
								<div class="clearfix"> </div>
							</div>
						</div>
						<div class="col-md-7 app-image">
							<img src="images/apps.png" alt="">
						</div>
						<div class="clearfix"></div>
					</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //app-->
			 	 <!-- /w3l-agileits -->
		<!-- signup -->
			<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body modal-spa">

						</div>
					</div>
				</div>
			</div>
			<!-- //signup -->
 	 <!-- /w3l-agile-its -->
		<!-- main content start-->
		<div class="main-content">
			<!-- header-starts -->
			<div class="header-section">
			<!--toggle button start-->
			<a class="toggle-btn  menu-collapsed"><i class="fa fa-bars"></i></a>
			<!--toggle button end-->
			<!--notification menu start -->
				<div class="menu-right">
					<div class="profile_details">		
						  <div class="col-md-4 serch-part">
								<div id="sb-search" class="sb-search">
									<form action="#" method="post">
										<input class="sb-search-input" placeholder="Search" type="search" name="search" id="search">
										<input class="sb-search-submit" type="submit" value="">
										<span class="sb-icon-search"> </span>
									</form>
								</div>
							</div>
							  <!-- search-scripts -->
									<script src="js/classie.js"></script>
									<script src="js/uisearch.js"></script>
										<script>
											new UISearch( document.getElementById( 'sb-search' ) );
										</script>
                                    <%                                            
                                      try{
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mp3","root","");
                                            Statement st=cn.createStatement();
                                            %>
									<!-- //search-scripts -->
											 <!---->
											  <div class="col-md-4 player">
													<div class="audio-player">
														<audio id="audio-player"  controls autoplay>
														<source src="user/music/<%=id%>.mp3" type="audio/ogg"></source>
                                                                                                                <source src="user/music/<%=id%>.m4a" type="audio/mpeg"></source>
														<source src="user/music/<%=id%>.m4a" type="audio/mpeg"></source>		
                                                                                                                </audio>		
                                                                                                        </div>
												<!---->
												<script type="text/javascript">
													$(function(){
													  $('#audio-player').mediaelementplayer({
														alwaysShowControls: true,
														features: ['playpause','progress','volume'],
														audioVolume: 'horizontal',
														iPadUseNativeControls: true,
														iPhoneUseNativeControls: true,
														AndroidUseNativeControls: true
													});
												 });
												</script>
												<!--audio-->
													<link rel="stylesheet" type="text/css" media="all" href="css/audio.css">
													<script type="text/javascript" src="js/mediaelement-and-player.min.js"></script>
													<!---->

 	 <!-- /w3layouts-agile -->
												<!--//-->
												<ul class="next-top">
													<li><a class="ar" href="#"> <img src="images/arrow.png" alt=""/></a></li>
													<li><a class="ar2" href="#"><img src="images/arrow2.png" alt=""/></i></a></li>
														
											 </ul>	
											</div>
										<div class="clearfix"> </div>
								</div>
							<!-------->
						</div>
					<div class="clearfix"></div>
				</div>
			<!--notification menu end -->
			<!-- //header-ends -->
 	 <!-- /wthree-agile -->
		<!-- //header-ends -->
			<div id="page-wrapper">
				
				<div class="inner-content single">
						    <!--/music-right-->
							
						<div class="tittle-head">

									
                                                                        <div class="col-md-4">            
                                           
                                                                              <img src="user/Artist/<%=Artist%>.jpg" width="180px" height="180px">
                                                                        </div>		
                                                                        <div class="col-md-4">
                                                                           
                                                                        </div>
                                                                        
									<div class="clearfix"> </div>
						</div>
                                         <div class="col-md-8">                               
                                                <table class="table">
                                                    <thead>
                                                      <tr>
                                                        <th>Like</th>
                                                        <th>Title</th>
                                                        <th>Artist</th>
                                                        <th></th>
                                                      </tr>
                                                    </thead>
                            <%  
                                           ResultSet rs=st.executeQuery("select * from song where Artist='"+Artist+"'");
                                           while(rs.next())
                                           { 
                                             String  tittle=rs.getString("tittle");
                                             albumid=rs.getString("albumid");
                                             songid=rs.getString("songId");
                                %>

                                                    <tbody>
                                                      <tr>
                                                        <td><span class="glyphicon glyphicon-heart" id="<%=songid%>" style="cursor:pointer"></span></td>
                                                        <td><%=tittle%></td>
                                                        <td><%=Artist%></td>
                                                        <td><a href="single_Artist.jsp?songid=<%=songid%>&&albumid=<%=albumid%>&&Artist=<%=Artist%>"><button class="btn btn-primary">Play</button></a></td>
                                                      </tr>
                                                    </tbody>
                                                    <%
                                                      }
                                                     %>
                                                  </table>                                                                        
                                         </div>                        
                                                     <%
                                                         }
                                                       catch(Exception e){
                                                              out.println(e.getMessage());
                                                          }
                                                         %>
                                                                        

				<div class="clearfix"> </div>
						<!--//music-right-->
						
						<div class="coment-form">
					<h4>Leave your comment</h4>
					<form action="#" method="post">
						<input type="text" value="Name " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
						<input type="email" value="Email (will not be published)*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email (will not be published)*';}" required="">
						<input type="text" value="Website" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Website';}" required="">
						<textarea onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Comment...';}" required="">Your Comment...</textarea>
						<input type="submit" value="Submit Comment">
					</form>
				</div>
			</div>
			 	 <!-- /w3l-agileits-->
						<!--body wrapper start-->
						<div class="review-slider">
						
								<div class="tittle-head">
									<h3 class="tittle">Featured Albums <span class="new"> New</span></h3>
									<div class="clearfix"> </div>
								</div>
								 <ul id="flexiselDemo1">
								<li>
									<a href="single.html"><img src="images/v1.jpg" alt=""/></a>
									<div class="slide-title"><h4>Adele21 </div>
									<div class="date-city">
										<h5>Jan-02-16</h5>
										<div class="buy-tickets">
											<a href="single.html">READ MORE</a>
										</div>
									</div>
								</li>
							</ul>
							<script type="text/javascript">
						$(window).load(function() {
							
						  $("#flexiselDemo1").flexisel({
								visibleItems: 5,
								animationSpeed: 1000,
								autoPlay: true,
								autoPlaySpeed: 3000,    		
								pauseOnHover: false,
								enableResponsiveBreakpoints: true,
								responsiveBreakpoints: { 
									portrait: { 
										changePoint:480,
										visibleItems: 2
									}, 
									landscape: { 
										changePoint:640,
										visibleItems: 3
									},
									tablet: { 
										changePoint:800,
										visibleItems: 4
									}
								}
							});
							});
						</script>
						<script type="text/javascript" src="js/jquery.flexisel.js"></script>	
						</div>

				</div>
			<div class="clearfix"></div>
						<!--body wrapper end-->
 	 <!-- /w3layouts-agile -->
					</div>
			  <!--body wrapper end-->
			      <div class="footer two">
				<div class="footer-grid">
					<h3>Navigation</h3>
					<ul class="list1">
					  <li><a href="index.jsp">Home</a></li>
					  <li><a href="radio.html">All Songs</a></li>
					  <li><a href="browse.html">Albums</a></li>
					  <li><a href="radio.html">New Collections</a></li>
					  <li><a href="blog.html">Blog</a></li>
					  <li><a href="contact.html">Contact</a></li>
				    </ul>
				</div>
				<div class="footer-grid">
					<h3>Our Account</h3>
				    <ul class="list1">
					  <li><a href="#" data-toggle="modal" data-target="#myModal5">Your Account</a></li>
					  <li><a href="#">Personal information</a></li>
					  <li><a href="#">Addresses</a></li>
					  <li><a href="#">Discount</a></li>
					  <li><a href="#">Orders history</a></li>
					  <li><a href="#">Addresses</a></li>
					  <li><a href="#">Search Terms</a></li>
				    </ul>
				</div>
				<div class="footer-grid">
					<h3>Our Support</h3>
					<ul class="list1">
					  <li><a href="contact.html">Site Map</a></li>
					  <li><a href="#">Search Terms</a></li>
					  <li><a href="#">Advanced Search</a></li>
					  <li><a href="#">Mobile</a></li>
					  <li><a href="contact.html">Contact Us</a></li>
					  <li><a href="#">Mobile</a></li>
					  <li><a href="#">Addresses</a></li>
				    </ul>
				  </div>
					  <div class="footer-grid">
						<h3>Newsletter</h3>
						<p class="footer_desc">Nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat</p>
						<div class="search_footer">
						 <form>
						   <input type="text" placeholder="Email...." required="">
						  <input type="submit" value="Submit">
						  </form>
						</div>
					 </div>
					 <div class="footer-grid footer-grid_last">
						<h3>About Us</h3>
						<p class="footer_desc">Diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat enim ad minim veniam,.</p>
						<p class="f_text">Phone:  &nbsp;&nbsp;&nbsp;00-250-2131</p>
						<p class="email">Email : &nbsp;<span><a href="mailto:mail@example.com">info(at)mailing.com</a></span></p>	
					 </div>
					 <div class="clearfix"> </div>
				</div>
			</div>
			 	 <!-- /w3layouts-agile -->
        <!--footer section start-->
			<footer>
			   <p>&copy 2016 Mosaic. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts.</a></p>
			</footer>
        <!--footer section end-->

      <!-- main content end-->
   </section>
  
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.js"></script>
</body>
</html>