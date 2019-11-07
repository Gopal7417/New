
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Spring MVC Multi Row Example </title>
	   <script type="text/javascript" 
            src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
    </script>
	<script type="text/javascript">
        $(document).ready(function () {
			
		 $('#id_btn').click(function(){
                  
			$.getJSON("something", function(data){
                                var data1 = JSON.stringify(data);
                     
                           
    $.each(data, function (index, value) {
        
        $('#four').append($('<option>').val(value.STAN_ID).text(value.STAN_ID)); 
    });
});

			});
		 });

        $(document).ready(function () {
			
   		 $('#id_btn2').click(function(){
   		
   		  
   

        $.ajax({
                      type: "POST",
                      data:{ "b": "data1", "c": "data2" },
                      url: "some",
                      success: function(data){
                     
                  
                  }
               });});});
    </script>
</head>



<body>

<h2>Spring MVC Multi Row Example</h2>

<form:form method="post" action="employee" modelAttribute="usersForm">
	
<form:select path="three" >
    <form:options items="${usersForm.usersList}" />
</form:select>

<form:select path="four" >


</form:select>
	
</form:form>
<p id = "kk" ></p>
 <button id="id_btn">hellooo</button>
 <button id="id_btn2">hellooo</button>
</body>
</html>