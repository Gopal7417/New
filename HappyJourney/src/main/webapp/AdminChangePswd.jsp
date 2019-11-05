  <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
 
        <style>
            body{
margin:0;
background:#f2f2f2f;
}
.nav{
width:100%;
background:#0CADA0;
height:43px;

}
ul{
list-style:none;
padding:0;
margin:0;
position:absolute;

}
ul li{
float:left;

}
ul li a{
width:150px;
color:white;

display:block;
text-decoration:none;
font-size:18px;
text-align:center;
padding:10px;
font-family: Trebuchet MS;

}
a:hover{
 border-left: 1px solid white;
 border-right: 1px solid white;
}
ul li ul{
background:#808080;
}
ul li ul li{
float:none;
}

ul li ul{
display:none;
}
ul li:hover ul{
	display:block;
	
}
        </style>
    </head>
    <body>
<img src="<c:url value="/resources/images/bus logo.png"/>" align="right" height=20% width=20% />
<br></br><br><br><br><br>
<div class="nav">

<ul>
    <li><a href="AdminMainPage.html">PROFILE</a>
        <ul>
            <li><a href="AdminChangePswd.jsp" target="_self">Change Password</a></li>
            <li><a href="Logout.jsp" target="_self">Log Out</a></li>
        </ul></li>
<li><a href="AdminMainPage.html">TRIPS</a>
<ul>
<li><a href="CreateTrip.jsp" target="_self">Create Trips</a></li>
<li><a href="ViewTrips.jsp"  target="_self">View Trips</a></li>
<li><a href="Cancel.jsp"  target="_self">Cancel Trips</a></li>
</ul></li>
<li><a href="Customers.jsp">CUSTOMERS</a></li>
<li><a href="AdminMainPage.html">BOOKINGS</a>
<ul>
<li><a href="TripWise.jsp" target="_self">Trip Wise</a></li>
<li><a href="BookingsDateWise.jsp" target="_self">Date Wise</a></li>
<li><a href="BUSWISE1.jsp" target="_self">Bus Wise</a></li>
<li><a href="Chart.jsp" target="_self">Chart</a></li>

</ul></li>

<li><a href="Cancellations.jsp">CANCELLATIONS</a></li>
</ul>
</div>
        <br> <br><br>        
   <div align ="center">
       
                <form>
                    <p>Old Password:<input type="password" name="pwd"> 
                        <br><br>
                    <p>New Password: <input type="password" name="npwd"></p>
                           <br><br>
                    <p><input type="submit" name="submit"style="background-color:#0CADA0;width:110px;
height:40px;" value="Enter"></p>
                </form>
    </div>
        
               
            
    </body>
</html>
