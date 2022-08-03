<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>


<%@ page import="java.util.*"%>
<%@ page import="com.egain.platform.framework.dataaccess.*"%>
<%@ page import="com.egain.platform.common.*"%>
<%@ page import="com.egain.platform.framework.util.calendar.dataobject.*" %>
<%@ page import="com.egain.platform.framework.util.calendar.*" %>

<%
    CallerContext callerContext = new CallerContext(1, "Partition-1", 12, "Test User");
    //DataAccess dataAccess = new DataAccess(callerContext);
    CalendarData oCalendarMainData = new CalendarData();
    List<CalendarData> allCalendarMainData = EgainCalendar.getAllCalendars(callerContext);
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
    <form action="createNewCalendar.jsp" method="post">
        <button type="submit">Create New Calendar</button>
    </form>
    <table>
        <th>Id</th>
        <th>Name</th>
        <th>Description</th>
        <th>Department</th>
        <th>Details</th>
        <th>IsDefault</th>
        <th>Update</th>
        <th>Delete</th>
        <%
            Iterator it = allCalendarMainData.iterator();
            while(it.hasNext()){
                oCalendarMainData = (CalendarData)  it.next();
                short isDefault = oCalendarMainData.getIsDefault();
        %>
        <tr>
            <td><%=oCalendarMainData.getId()%></td>
            <td><%=oCalendarMainData.getName()%></td>
            <td><%=oCalendarMainData.getDescription()%></td>
            <td><%=oCalendarMainData.getDepartmentId()%></td>
            <td><a href="details.jsp?id=<%=oCalendarMainData.getId()%>">Details</a></td>
            <td><%=isDefault%></td>
            <td><a href="update.jsp?id=<%=oCalendarMainData.getId()%>">Update</a></td>
            <td><a href="delete.jsp?id=<%=oCalendarMainData.getId()%>">Delete</a></td>
        </tr>
        <%
            }
        %>
        <tr>
        </tr>
    </table>
    <form action="viewAllDateRanges.jsp" method="post">
        <button type="submit">View All Date Ranges</button>
    </form>
</body>
</html>