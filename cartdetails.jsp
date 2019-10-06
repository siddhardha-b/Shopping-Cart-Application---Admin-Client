<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Obaju e-commerce template">
    <meta name="author" content="Ondrej Svestka | ondrejsvestka.cz">
    <meta name="keywords" content="">

    <title>
       Sportify.com
    </title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>

    <!-- styles -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="css/style.default.css" rel="stylesheet" id="theme-stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="css/custom.css" rel="stylesheet">

    <script src="js/respond.min.js"></script>

    <link rel="shortcut icon" href="favicon.png">



</head>

<body>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="action.Database"%>
<%
String ca=request.getParameter("id");


%>
 <%
                            String uname = session.getAttribute("n1").toString();
                                Connection con = Database.getConnection();
                                Statement st = con.createStatement();
								
                                  ResultSet rs = st.executeQuery("select * from cart where status='NO' AND name='"+uname.trim()+"'");
								System.out.println("select * from cart where status='NO' AND name='"+uname+"'");
                                %>
    <!-- *** TOPBAR ***
 _________________________________________________________ -->
    <div id="top">
        <div class="container">
            <div class="col-md-6 offer" data-animate="fadeInDown">
               
            </div>
         
        </div>
        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
            <div class="modal-dialog modal-sm">

                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="Login">Customer login</h4>
                    </div>
                    <div class="modal-body">
                        <form action="useraction.jsp" method="post">
                            <div class="form-group">
                                <input type="text" class="form-control" id="email-modal" name="uname" placeholder="email">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="password-modal" name="pass" placeholder="password">
                            </div>

                            <p class="text-center">
                                <button class="btn btn-primary"><i class="fa fa-sign-in"></i> Log in</button>
                            </p>

                        </form>

                        <p class="text-center text-muted">Not registered yet?</p>
                        <p class="text-center text-muted"><a href="register.jsp"><strong>Register now</strong></a></p>

                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- *** TOP BAR END *** -->

    <!-- *** NAVBAR ***
 _________________________________________________________ -->

    <div class="navbar navbar-default yamm" role="navigation" id="navbar">
        <div class="container">
            <div class="navbar-header">

                <a class="navbar-brand home" href="index.html" data-animate-hover="bounce">
                    <img src="img/logo.png" alt="Obaju logo" class="hidden-xs">
                    <img src="img/logo-small.png" alt="Obaju logo" class="visible-xs"><span class="sr-only">Sportify.com - go to homepage</span>
                </a>
                <div class="navbar-buttons">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <i class="fa fa-align-justify"></i>
                    </button>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search">
                        <span class="sr-only">Toggle search</span>
                        <i class="fa fa-search"></i>
                    </button>
                    <a class="btn btn-default navbar-toggle" href="basket.html">
                        <i class="fa fa-shopping-cart"></i>  <span class="hidden-xs">cart</span>
                    </a>
                </div>
            </div>
            <!--/.navbar-header -->

            <div class="navbar-collapse collapse" id="navigation">

                <ul class="nav navbar-nav navbar-left">
                    <li ><a href="uview.jsp">Home</a>
                    </li>
                    <li class="dropdown yamm-fw">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Menu <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="yamm-content">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h5><a href="category.jsp?ca=Cricket">Cricket<a/></h5>
                                           
                                        </div>
                                        <div class="col-sm-3">
                                              <h5><a href="category.html">Basket Ball<a/></h5>
                                           
                                        </div>
                                        <div class="col-sm-3">
                                            <h5><a href="category.html">Volley Ball<a/></h5>
                                           
                                        </div>
                                        <div class="col-sm-3">
                                           <h5><a href="category.html">Soccer<a/></h5>
                                           
                                        </div>
                                    </div>
                                </div>
                                <!-- /.yamm-content -->
                            </li>
                        </ul>
                    </li>

     
                </ul>

            </div>
            <!--/.nav-collapse -->

    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="index.jsp">Home</a>
                        </li>
                        
                    </ul>
                </div>

                <div class="col-md-3">
                    <!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
                 

                      <!-- *** MENUS AND FILTERS END *** -->

                    
                </div>

    <div class="container">
                 <div class="col-md-9" id="basket">

                    <div class="box">


                        <form method="post" action="checkout1.html">

                            <h1>Cart Details </h1>
                            
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
										
                        <th style="background-color: white">Product Name</th>
                        <th style="background-color: white">Product Item</th>
                        <th style="background-color: white">Quantity</th>
                        <th style="background-color: white">Price</th>
                       
						
                       
                     
                                        </tr>
                                    </thead>
                                    <tbody>
                       <tr>
                        <%
                            
                                while (rs.next()) {%>
                       					  
					   <td><%=rs.getString("productname")%></td>
                        <td><%=rs.getString("productitem")%></td>
                        <td><%=rs.getString("quantity")%></td>
                        <td><%=rs.getString("total")%></td>
                     
						
                       
                     
                    </tr>
                    <% }
                        
                    %>  
 <tr><td><a href="bank.jsp?<%=uname%>">Buy</a></td>  </tr>                   
					 </tbody>
                                    <tfoot>
                                        <tr>
                                          
                                        </tr>
                                    </tfoot>
                                </table>

                            </div>
           </div>
		   </div>

        </div>
        <!-- /#content -->


<br><br><br><br><br><br><br><br><br><br><br><br>


    </div>
    <!-- /#all -->
        </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->

    </div>
    <!-- /#all -->

    </div>
    <!-- /#all -->


    

    <!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/modernizr.js"></script>
    <script src="js/bootstrap-hover-dropdown.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/front.js"></script>


</body>

</html>