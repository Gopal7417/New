    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="amin.js">

        </script>

 <%@taglib tagdir="/WEB-INF/tags" prefix="tag"%>

 <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>   
  </head>
    <body onload="Namesload();FromTo()">
        
<tag:navbar/>
        <br><br>
        <h3>Create a trip<h3>
                 <form:form action="" modelAttribute="Trip" method="POST">
                  
                    <table align="center">
                        <tr>
                            <td>

                                <form:label path="Bus Type" class="l" style="font-family: Trebuchet MS;">Bus Type:&nbsp&nbsp&nbsp</form:label><br>

                      
                    
                                <form:select path="bustype" id="sBType" name="sBType" onchange="loadBus()"/> 

                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <td>
                                <form:label path="Buses" class="l"  style="font-family: Trebuchet MS;">Buses:&nbsp&nbsp&nbsp</form:label><br>

                                <form:select path="regno" id ="regno"  name="sBname" style="width:250px;" /> 


                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

                            <td>
                                <form:label path="From Stations" class="l" style="font-family: Trebuchet MS;">From Stations:&nbsp&nbsp&nbsp</form:label><br>
                                  <select path="station" id="station" name="sFrom" >  </select>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <td>
                                <label class="l" path="To Stations" style="font-family: Trebuchet MS;">To Stations:&nbsp&nbsp&nbsp</label><br>
                                <form:select path="station" id="station" name="sTo" onchange="addRow()" />
                        </tr>
                        <tr>

                        </tr> 
                    </table>
                    <br>

<p class="blocktext"  id="desc"></p>

                    <br></br>


                    <table id="myTable" align="center" >
                        <tr>
                            <th> Sno</th>
                            <th> Station</th>
                            <th>Index</th>
                            <th>Time</th>
                        </tr>  
                    </table>

                    <br><br><br>
       


                    <table align="center">
                        <tr>
                            <td>From Date <form:input path="Fdate"name ="Fdate" type="date"/> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
                            <td>To Date<form:input path="Tdate" name ="Tdate" type="date"/></td>
                        </tr>
                    </table>
                    <br><br>
                 <input type="hidden" name="myField" id="myField" value="" />
                    <table align="center">
                        <tr>
                            <td><input style="background-color:#0CADA0;width:110px;height:40px; color:#FFFFFF;"  type="submit" value="Create" onclick="fun()"></td>
                            
                        </tr>
                    </table>

                </form:form>
                </body>
                </html>

