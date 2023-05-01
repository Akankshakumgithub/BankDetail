<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://unpkg.com/@phosphor-icons/web"></script>
<style type="text/css">
html {
	font-size: 10px;
}

* {
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
	font-family: sans-serif;
	text-decoration: none;
}

body {
	width: 100%;
}

.heading {
	font-size: 2.5rem;
	margin: 3rem 0;
	text-align: center;
	color: #565759;
}

.container {
	width: 80%;
	height: auto;
	margin: 0 auto;
	/* border: 1px solid red; */
}

.details {
	box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px,
		rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px
		-2px 6px 0px inset;
	width: 100%;
	height: auto;
	border-radius: 12px;
	/* border: 1px solid green; */
	font-size: 1.4rem;
	overflow: hidden;
}

.details th {
	box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px,
		rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px
		-2px 6px 0px inset;
	background-color: #1c7ed6;
	color: #fff;
	padding: 1rem 1.5rem;
}

.details td {
	box-shadow: rgba(60, 64, 67, 0.3) 0px 1px 2px 0px,
		rgba(60, 64, 67, 0.15) 0px 2px 6px 2px;
	padding: 1rem 1.5rem;
}

.details tr:nth-child(odd) {
	background-color: #adb5bd;
}

.btn {
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 3rem auto;
	height: auto;
	width: 200px;
}

.btn a {
	text-align: center;
	border: 2px solid #1c7ed6;
	color: #1c7ed6;
	border-radius: 25px;
	padding: 2rem 3rem;
	font-weight: 700;
	text-decoration: none;
	transition: all 0.3s ease;
	font-size: 1.5rem;
}

.btn a:hover {
	background-color: #1c7ed6;
	color: #fff;
}


.search-btn{
    margin-bottom: 1rem;
    width: 25rem;
    height: auto;
     display: flex;
    flex-wrap: wrap;
}

.search-btn input{
    width: 65%;
    height: 3.5rem;
    margin-bottom: 0.5rem;
    border: none;
    outline: none;
    padding: 0 1rem;
    border-radius: 2.5rem;
    box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
}

.search-btn input:focus{
    box-shadow: #1c7fd6a0 0px 0px 0px 2px;
}

.search-btn span{
    color: red;
    font-size: 1.5rem;
    margin-left: 0.8rem;  
}

.search-btn button{
    width: 32%;
    height: 3.5rem;
    border: 2px solid #1c7ed6;
    box-shadow: rgba(14, 30, 37, 0.12) 0px 2px 4px 0px, rgba(14, 30, 37, 0.32) 0px 2px 16px 0px;
    color: #1c7ed6;
    font-weight: 600;
    border-radius: 2.5rem;
    transition: all 0.3s ease;
}

.search-btn button:hover{
    background-color: #1c7ed6;
    color: #fff;
}

.details .action {
	display: flex;
	justify-content: center;
	gap: 1rem;
}

.action .ph-bold {
	font-size: 1.8rem;
}

.ph-pencil {
	color: #339af0;
}

.ph-trash {
	color: #fa5252;
}
</style>
<title>Details page</title>
</head>
<body>
	<h1 class="heading">WELCOME to the BankApp</h1>
	 <div class="container">
		<table class="details">
			<tr>
				<th>Sl.No</th>
				<th>Name</th>
				<th>Email</th>
				<th>Address</th>
				<th>Action</th>
			</tr>
			
			<%
			int i = 1;
			%>
			<c:forEach items="${persons}" var="person">
				<tr>
					<td id="slNo"><%=i%></td>
					<td>${person.name }</td>
					<td>${person.email }</td>
					<td>${person.address }</td>
					<td class="action"><a href="update/${person.id }"><i
							class="ph-bold ph-pencil"></i></a><a  href="delete/${person.id }"><i
							class="ph-bold ph-trash"></i></a></td>
				</tr>
				<%
				i++;
				%>
			</c:forEach>
			</table>
		<div class="btn">
			<a href="log">Add Person</a>
		</div>

	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	<script>
	$(document).ready(function () {
		$('table').on('click', '.ph-trash', function(){
			if(Window.confirm("you want to delete this item")){
				
			}
		});
	});
	</script>
</body>
</html>