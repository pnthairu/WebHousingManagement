<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
	table{
		heigh: 200px;
		width: 180px:
		border: 1px solid black;
	}
	div#container	{
	width:850px;
	height: 1000px;
	margin:auto;
	padding:10px;
	background-color:powderblue;	
	border:thin solid black;
	font-color: blue;
	}	
</style>
<title>Tenant List</title>
</head>
<body>
<div id="container">
<p style="background-color:tomato" align="center"> Tenants Lease List </p>
<form method = "post" action = "listNavigationServlet">
<table>
<c:forEach items="${requestScope.allItems}" var="currentlist">
<tr>
   <td><input type="radio" name="id" value="${currentlist.id}"></td>
   
   <tr>  
   		<td colspan="3">Tenant: ${currentlist.tenant.name}</td>  		
   		<td colspan="3">Lease Signing Date: ${currentlist.leaseDate}</td>      			
   </tr>   
     
   <tr>  
   			   		
   		<td colspan="3">Lease Start Date: ${currentlist.tenant.rentStart}</td>
   		<td colspan="3"> Lease End Date: ${currentlist.tenant.rentEnd}</td>
   </tr>
  <tr>
   		<td colspan="3">Rent Price per Month: ${currentlist.tenant.rent}</td> 
   		<td colspan="3">Apt No.: ${currentlist.tenant.unit_number}</td> 	
    </tr>
        
   <c:forEach var = "listVal" items = "${currentlist.listOfUnits}">
            <tr>            	  
           		 <td colspan="3"> ${listVal.name}, ${listVal.address} </td>               
            </tr>
  </c:forEach>
</c:forEach>
</table>
<p></p>
<input type = "submit" value = "edit" name="doThisToList">
<input type = "submit" value = "delete" name="doThisToList">
<input type="submit" value = "add" name = "doThisToList">
</form>
<p>
<a href="index.html">GO TO HOME PAGE</a>
</p>
</div>
</body>
</html>