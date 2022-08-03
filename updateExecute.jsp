<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>


<%@ page import="java.util.*"%>
<%@ page import="com.egain.platform.framework.util.calendar.dataobject.*" %>
<%@ page import="com.egain.platform.framework.util.calendar.*" %>
<%@ page import="com.egain.platform.framework.dataaccess.*"%>
<%@ page import="com.egain.platform.common.*"%>
<%!
    static String changeDateFormat(String date){
        String[] dates = new String[3];
        dates = date.split("-");
        String newDate = dates[1] + "/" + dates[2] + "/" + dates[0];
        return newDate;
    }
%>
<%
    CallerContext callerContext = new CallerContext(1, "Partition-1", 12, "Test User");
    DataAccess dataAccess = new DataAccess(callerContext);
    
    String sName = request.getParameter("name");
    String sDescription = request.getParameter("description");
    String sd1 = changeDateFormat(request.getParameter("start_date1"));
    String ed1 = changeDateFormat(request.getParameter("end_date1"));    
    String ex1 = changeDateFormat(request.getParameter("exception1"));
    long did1 = Integer.parseInt(request.getParameter("dayid1"));
    long day_id[] = {did1};
    String[] exceptionDates= {ex1};

    CalendarMainData oCalendarMainData = new CalendarMainData();
    long lId = Long.parseLong(request.getParameter("id"));
    oCalendarMainData.setId(lId);
    oCalendarMainData.setName(sName);
    oCalendarMainData.setDescription(sDescription);
    oCalendarMainData.setDepartmentId(100113);

    List<CalendarData> dateRanges = new ArrayList<CalendarData>();
    CalendarData oCalendarData = new CalendarData();
    //oCalendarData.setMainId(lId);
    oCalendarData.setCalendarName(sName);
    oCalendarData.setDescription(sDescription);
    oCalendarData.setDepartmentId(100113);
    oCalendarData.setStartDate(sd1);
    oCalendarData.setEndDate(ed1);
    oCalendarData.setExceptionDates(exceptionDates);
    oCalendarData.setDayIds(day_id);

    dateRanges.add(oCalendarData);

    oCalendarMainData.setDateRanges(dateRanges);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylesheet.css">
    <title>Update Status</title>
</head>
<body>
    <%
        try {
            EgainCalendar.update(callerContext, oCalendarMainData);
            //dateRange = oCalendarMainData.getAttribute("DATE RANGE");
    %>
            <h1>QUERY EXECUTED SUCESSFULLY...</h1>
    <%
        } catch (Exception ex){
    %>
            <h1> Failed to Execute Query!<%=ex%></h1>
    <%
        }
    %>

    <form action = "viewAllCalendar.jsp" method = "post">
        <button type="submit">View All Calendar</button>
    </form>
</body>
</html>