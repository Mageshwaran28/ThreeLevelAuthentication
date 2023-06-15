<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DisplayImage</title>

<style>
	h1{
		text-align:center;
		color:red;
	}
	
	div,form{
	text-align:center;
	}
	
	table{
		border:1px solid black;
		width:600px;
	}
</style>

</head>
<body>
<h1>DISPLAY IMAGE DETAIL</h1>
<form action="DisplayServlet" method="post">
	Enter Image Id:
	<input type="number" name="ImgId">
	<input type="submit" value="Display Image">
</form>
<hr>

<%
	String imgFileName=(String)request.getAttribute("img");
	String imgId = (String) request.getAttribute("id");
	System.out.println(imgFileName);
%>

<div>
	<table>
		<tr>
			<td>Image id </td>
			<td>Image</td>
		</tr>
		
		<%
			if(imgFileName!="" && imgId!=""){
		%>
		
		<tr>
			<td><%=imgId %></td>
			<td><img src="images/<%=imgFileName%>"></td>
		</tr>
		
		<%
			}
		%>
	</table>
</div>
</body>
</html>