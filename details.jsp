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
    CalendarMainData oCalendarMainData = EgainCalendar.getCalendarDetails(callerContext, lId);
    //List<CalendarData> loCalendarData = EgainCalendar.getAllDateRanges(callerContext, lId);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylesheet.css">
    <title>Details of <%=lId%></title>
</head>
<body>
    <h1><%=oCalendarMainData%></h1>
    
    <form action = "viewAllCalendar.jsp" method = "post">
        <button type="submit">View All Calendar</button>
    </form>
</body>
</html>