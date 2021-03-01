<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
	<h1 align="center">Products</h1>
	<hr />

	<jsp:include page="./menu.jsp" />


	<table align="center">

		<tbody>
			<tr>
			<td> Items </td>
			<td>              
              <select name = "prod" onchange="location = this.options[this.selectedIndex].value;" id = "prod">
				<option value = "-1">Select</option>
                    <c:forEach var="prod" items="${productsList}">
  						<option value="./findProduct?id=${prod.id}">${prod.name}</option>
			  		</c:forEach>                        
             </select>                 
             </td>
             </tr>
              
		</tbody>


	</table>


</body>
</html>