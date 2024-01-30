<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<h2> Start Checkin : </h2>
	
	<form action="startCheckIn">
		Enter the Reservation id : <input type="text" name="reservationId"/>
		<input type="submit" value="Start Checkin"/>
	</form>

</body>
</html>