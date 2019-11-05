   <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/Adminpage.css"/>"/>

</head>
<body>
  
<img src="<c:url value="/resources/images/bus logo.png"/>"align="right" width=20% height= 20%>
<br></br><br><br><br><br>
<div class="nav">

<ul>
    <li><a href="AdminMainPage.jsp">PROFILE</a>
        <ul>
            <li><a href="AdminChangePswd.jsp" target="_self">Change Password</a></li>
            <li><a href="Logout.jsp" target="_self">Log Out</a></li>
        </ul></li>
<li><a href="AdminMainPage.jsp">TRIPS</a>
<ul>
<li><a href="CreateTrip.jsp" target="_self">Create Trips</a></li>
<li><a href="ViewTrips.jsp"  target="_self">View Trips</a></li>
<li><a href="canceltrip.jsp"  target="_self">Cancel Trips</a></li>
</ul></li>
<li><a href="Customers.jsp">CUSTOMERS</a></li>
<li><a href="AdminMainPage.jsp">BOOKINGS</a>
<ul>
<li><a href="TripWise.jsp" target="_self">Trip Wise</a></li>
<li><a href="BookingsDateWise.jsp" target="_self">Date Wise</a></li>
<li><a href="BUSWISE1.jsp" target="_self">Bus Wise</a></li>
<li><a href="Chart.jsp" target="_self">Chart</a></li>

</ul></li>

<li><a href="Cancellations.jsp">CANCELLATIONS</a></li>
</ul>
</div>
<h1 align="center">Welcome </h1>
</body>

</html>