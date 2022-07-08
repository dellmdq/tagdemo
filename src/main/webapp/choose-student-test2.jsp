<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*, dellmdq.jsp.tagdemo.Student"%>

<%
	//just create sample data... normally provided by MVC	
	List<Student> data = new ArrayList<>();

	data.add(new Student("L", "Gante", true));
	data.add(new Student("Teto", "Medina", false));
	data.add(new Student("Esteban", "Quito", false));

	pageContext.setAttribute("myStudents", data);
%>

<html>
<body>
	<table border="1">
	
	<tr>
		<th>First Name </th>
		<th>Last Name</th>
		<th>Gold Customer</th>
	</tr>
	
	<c:forEach var="tempStudent" items="${myStudents}" >
		
		<tr>
		
			<td>${tempStudent.firstName}</td> 
			<td>${tempStudent.lastName }</td>
			<td>
				<c:choose>
					<c:when	test="${tempStudent.goldCustomer }">
						Special discount
					</c:when>
					
					<c:otherwise>
						Not eligigle for discount.
					</c:otherwise>
				
				
				</c:choose>	
			</td>
		</tr>	
	</c:forEach>

	</table>






</body>




</html>