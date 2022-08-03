<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>


<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="com.egain.platform.framework.util.calendar.dataobject.*" %>
<%@ page import="com.egain.platform.framework.util.calendar.*" %>
<%@ page import="com.egain.platform.framework.dataaccess.*"%>
<%@ page import="com.egain.platform.common.*"%>
<%@ page import="com.egain.platform.module.zdt.*"%>

<%
    CallerContext callerContext = new CallerContext(1, "Partition-1", 12, "Test User");
    ZDTFeatureMultipleCalendarSupport zdt = new ZDTFeatureMultipleCalendarSupport();
   
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
    <%
        try{
            zdt.execute(callerContext);
    %>
        <p>Executed Sucessfully...</p>
    <%
        } catch (Exception ex){
    %>
        <h1>SOMETHING WENT WRONG...</h1>
    <%
        }
    
    %>
    <form action = "viewAllCalendar.jsp" method = "post">
        <button type="submit">View All Calendar</button>
    </form>
</body>
</html>