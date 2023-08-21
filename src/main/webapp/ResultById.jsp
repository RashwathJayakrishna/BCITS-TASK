<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
a{
            text-decoration: none;
/*     color: white; */
        }
/*         button{ */
/*         background-color: #007BFF */
/*         } */
</style>
</head>
<body>
<h1 style="color: green;">${save }</h1>
<%-- <h1>${data.ID  }</h1> --%>
<%-- <h1>${data  }</h1> --%>
<%-- <h1>${size }</h1> --%>
<table class="table">
  <thead>
    <tr>
    
      <th scope="col">id</th>
      <th scope="col">name</th>
      <th scope="col">designation</th>
      <th scope="col">age</th>
      <th scope="col">email</th>
      <th scope="col">gender</th>
      <th scope="col">address</th>
       <th scope="col">mobile</th>
       <th scope="col">Reaction</th>
    </tr>
  </thead>
  <tbody>
  <c:if test="${1=='1'}" >
		
	
  <tr>
<td>${id}</td>
<td>${name}</td>
<td>${designation}</td>
<td>${age}</td>
<td>${email}</td>
<td>${gender}</td>
<td>${address}</td>
<td>${mobile}</td>
<td>  <a href="updateById?id=${a.id}"> Edit</a> /<a href="deleteById?id=${a.id}" onclick="return confirmation()"> Delete</a> </td>
					<tr>
					</c:if>

  </tbody>
</table>
 <br>
  <button ><a href="Admin.jsp">Home</a></button>
  
  <script>

function confirmation(){
    var confirmation=confirm("Are you sure you want to delete this item?");
    return confirmation;
}
</script>
</body>
</html>