<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>


<%@ page import="java.util.*"%>
<%@ page import="com.egain.platform.framework.util.calendar.dataobject.*" %>
<%@ page import="com.egain.platform.framework.dataaccess.*"%>
<%@ page import="com.egain.platform.common.*"%>


<%
    int dateRangeCount = 0;
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylesheet.css">
    <title>View All Calendars</title>
</head>
<body>
    
    <form action = "create.jsp" method = "post">
        <p>Enter Name:</p><input name = "name" type="text" />
        <p>Enter Description:</p><input name = "description" type="text" />
        <p>Date Range: </p>
        
        <p>Start Date1: </p><input name = "start_date1" type="date" />
        <p>End Date1: </p><input name = "end_date1" type="date" />
        <p>Start Date2: </p><input name = "start_date2" type="date" />
        <p>End Date2: </p><input name = "end_date2" type="date" />
        <p>Start Date3: </p><input name = "start_date3" type="date" />
        <p>End Date3: </p><input name = "end_date3" type="date" />
        <!-- <p>Start Date4: </p><input name = "start_date4" type="date" />
        <p>End Date4: </p><input name = "end_date4" type="date" />
        <p>Start Date5: </p><input name = "start_date5" type="date" />
        <p>End Date5: </p><input name = "end_date5" type="date" />
        <p>Start Date6: </p><input name = "start_date6" type="date" />
        <p>End Date6: </p><input name = "end_date6" type="date" /> -->
        
        <p>Exception1: </p><input name = "exception1" type="date" />
        <p>Exception1 Day_ID: </p><input name = "dayid1" type="number" />
        <p>Exception2: </p><input name = "exception2" type="date" />
        <p>Exception2 Day_ID: </p><input name = "dayid2" type="number" />

        <button type="submit">CREATE</button>
    </form>

    <form action = "viewAllCalendar.jsp" method = "post">
        <button type="submit">View All Calendar</button>
    </form>

</body>
</html>