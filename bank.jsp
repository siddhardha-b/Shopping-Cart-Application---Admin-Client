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
<%
if(request.getParameter("msg")!=null)
				 
{
					
  out.println("<script>alert('Login Success...!')</script>");
				  
}
%>

<%
if(request.getParameter("kk")!=null)
				 
{
					
  out.println("<script>alert('Added to cart ...!')</script>");
				  
}
if(request.getParameter("mm")!=null)
{

  out.println("<script>alert('Failed to add in cart ...!')</script>");
				  
}
%>
<body>

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
                        <form action="customer-orders.html" method="post">
                            <div class="form-group">
                                <input type="text" class="form-control" id="email-modal" placeholder="email">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="password-modal" placeholder="password">
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
                    <a class="btn btn-default navbar-toggle" href="cartdetails.jsp">
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
                                            <h5><a href="category1.jsp?ca=Cricket">Cricket<a/></h5>
                                           
                                        </div>
                                        <div class="col-sm-3">
                                              <h5><a href="category1.jsp?ca=Basket">Basket Ball<a/></h5>
                                           
                                        </div>
                                        <div class="col-sm-3">
                                            <h5><a href="category1.jsp?ca=Volley">Volley Ball<a/></h5>
                                           
                                        </div>
                                        <div class="col-sm-3">
                                           <h5><a href="category1.jsp?ca=Scocer">Soccer<a/></h5>
                                           
                                        </div>
										  <div class="col-sm-3">
                                           <h5><a href="index.jsp">Logout<a/></h5>
                                           
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
    <div class="navbar-buttons">

                <div class="navbar-collapse collapse right" id="basket-overview">
                    <a href="cartdetails.jsp" class="btn btn-primary navbar-btn"><i class="fa fa-shopping-cart"></i><span class="hidden-sm">cart</span></a>
                </div>
                <!--/.nav-collapse -->

                <div class="navbar-collapse collapse right" id="search-not-mobile">
                    <button type="button" class="btn navbar-btn btn-primary" data-toggle="collapse" data-target="#search">
                        <span class="sr-only">Toggle search</span>
                        <i class="fa fa-search"></i>
                    </button>
                </div>

            </div>

            <div class="collapse clearfix" id="search">

                <form class="navbar-form" action="search.jsp" role="search">
                    <div class="input-group">
                        <input type="text" class="form-control" name="ca" placeholder="Search">
                        <span class="input-group-btn">

			<button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>

		    </span>
                    </div>
                </form>

            </div>
                <!--/.nav-collapse -->

                <div class="navbar-collapse collapse right" id="search-not-mobile">
                   
                   
                   
                   
                </div>

            </div>

            <div class="collapse clearfix" id="search">

                <form class="navbar-form" role="search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search">
                        <span class="input-group-btn">

			<button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>

		    </span>
                    </div>
                </form>

            </div>
            <!--/.nav-collapse -->

        </div>
        <!-- /.container -->
    </div>
    <!-- /#navbar -->

    <!-- *** NAVBAR END *** -->



    <div id="all">

        <div id="content">

            
            <!-- *** ADVANTAGES HOMEPAGE ***
 _________________________________________________________ -->
            <div id="advantages">

                
                <!-- /.container -->

            </div>

        
		<div style="height: 338px;border-bottom-left-radius: 40px;border-bottom-right-radius: 40px;margin: 15px">
                    <%
                         String uname = session.getAttribute("n1").toString();
                    %>
                    <form action="paction.jsp" method="post" style="margin: 10px;">
                        <label style="font-size: 20px">Card Holder Name</label>&nbsp;&nbsp;<input type="text" name="uname" value="<%=uname%>" readonly="" class="textbox1" style="margin-left: 20px"/><br /><br />
                        <label style="font-size: 20px">Bank Name</label>&nbsp;
                        <select style="width: 200px;height: 25px;font-size: 20px;margin-left: 84px" required="" name="bank">
                            <option selected="">Select Bank</option>   
                            <option value="ICIC">CommonWealth Bank</option>   
                            <option value="KOTAK">Bendigo Bank</option>   
                            <option value="CITIBANK">WestPac Bank</option>   
                            <option value="SBI">SunCorp Bank</option>   
                            <option value="HDFC">Heritage Bank</option>   
                            <option value="AXIS">ANZ Bank</option>   
                        </select><br /><br />
                        <label style="font-size: 20px">Credit/Debit Card No</label>&nbsp;&nbsp;<input type="text" name="cno" value="" required="" class="textbox1"/><br /><br />
                        <input type="submit" value="Purchase" class="button" style="margin-left: 200px"/>
                    </form>
                </div>
				</div>
            <!-- *** GET INSPIRED END *** -->

        </div>
        <!-- /#content -->

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