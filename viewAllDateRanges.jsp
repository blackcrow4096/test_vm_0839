<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>


<%@ page import="java.util.*"%>
<%@ page import="com.egain.platform.framework.util.calendar.dataobject.*" %>
<%@ page import="com.egain.platform.framework.dataaccess.*"%>
<%@ page import="com.egain.platform.common.*"%>

<%
    CallerContext callerContext = new CallerContext(1, "Partition-1", 12, "Test User");
    DataAccess dataAccess = new DataAccess(callerContext);
    CalendarData oCalendarData = new CalendarData();
    List<CalendarData> allCalendarData = dataAccess.executeSelect("calendar:loadallcalendars", oCalendarData);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylesheet.css">
    <title>View All Date Ranges</title>
</head>
<body>
    <form action="createNewCalendar.jsp" method="post">
        <button type="submit">Create New Calendar</button>
    </form>
    <table>
        <th>MainCalId</th>
        <th>Id</th>
        <th>Name</th>
        <th>Description</th>
        <th>Department</th>
        <th>StartDate</th>
        <th>EndDate</th>
        <th>Exceptions</th>
        <%
            Iterator it = allCalendarData.iterator();
            while(it.hasNext()){
                oCalendarData = (CalendarData)  it.next();
        %>
        <tr>
            <td><%=oCalendarData.getMainCalendarId()%></td>
            <td><%=oCalendarData.getId()%></td>
            <td><%=oCalendarData.getCalendarName()%></td>
            <td><%=oCalendarData.getDescription()%></td>
            <td><%=oCalendarData.getDepartmentId()%></td>
            <td><%=oCalendarData.getStartDate()%></td>
            <td><%=oCalendarData.getEndDate()%></td>
            <td><a href="exception.jsp?id=<%=oCalendarData.getId()%>">View Exception</a></td>
        </tr>
        <%
            }
        %>
        <tr>
        </tr>
    </table>
    <form action="viewAllCalendar.jsp" method="post">
        <button type="submit">View All Calendars</button>
    </form>
</body>
</html>