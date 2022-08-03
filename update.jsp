<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>


<%@ page import="java.util.*"%>
<%@ page import="com.egain.platform.framework.util.calendar.dataobject.*" %>
<%@ page import="com.egain.platform.framework.util.calendar.*" %>
<%@ page import="com.egain.platform.framework.dataaccess.*"%>
<%@ page import="com.egain.platform.common.*"%>

<%
    CallerContext callerContext = new CallerContext(1, "Partition-1", 12, "Test User");
    DataAccess dataAccess = new DataAccess(callerContext);
    long lId = Long.parseLong(request.getParameter("id"));
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylesheet.css">
    <title>Update</title>
</head>
<body>
    <form action = "updateExecute.jsp?id=<%=lId%>" method = "post">
        <p>Enter Name:</p><input name = "name" type="text" />
        <p>Enter Description:</p><input name = "description" type="text" />
        <p>Date Range: </p>
        
        <p>Start Date1: </p><input name = "start_date1" type="date" />
        <p>End Date1: </p><input name = "end_date1" type="date" />
        <p>Exception1: </p><input name = "exception1" type="date" />
        <p>Exception1 Day_ID: </p><input name = "dayid1" type="number" />

        <button type="submit">UPDATE</button>
    </form>
    
    <form action = "viewAllCalendar.jsp" method = "post">
        <button type="submit">View All Calendar</button>
    </form>
</body>
</html>