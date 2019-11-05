
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Spring MVC Multi Row Example </title>
	
</head>



<body>

<h2>Spring MVC Multi Row Example</h2>

<form:form method="post" action="employee" modelAttribute="usersForm">
	
<form:select path="three" >
    <form:options items="${usersForm.usersList}" />
</form:select>


<input type="submit" value="Save" />
	
</form:form>
<p id = "kk" ></p>
 <button id="id_btn">hellooo</button>
</body>
</html>