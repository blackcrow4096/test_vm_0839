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
    String sd2 = changeDateFormat(request.getParameter("start_date2"));
    String ed1 = changeDateFormat(request.getParameter("end_date1"));
    String ed2 = changeDateFormat(request.getParameter("end_date2"));
    String sd3 = changeDateFormat(request.getParameter("start_date3"));
    String ed3 = changeDateFormat(request.getParameter("end_date3"));
    String ex1 = changeDateFormat(request.getParameter("exception1"));
    String ex2 = changeDateFormat(request.getParameter("exception2"));
    long did1 = Integer.parseInt(request.getParameter("dayid1"));
    long did2 = Integer.parseInt(request.getParameter("dayid2"));
    long day_id[] = {did1,did2};
    String[] exceptionDates= {ex1,ex2};
    //String ex1 = request.getParameter("exception1");
    //String ex2 = request.getParameter("exception2");
    
    CalendarMainData oCalendarMainData = new CalendarMainData();
    long lId=-1;
    //oCalendarMainData.setId(lId);
    oCalendarMainData.setName(sName);
    oCalendarMainData.setDescription(sDescription);
    oCalendarMainData.setDepartmentId(1001);

    List<CalendarData> dateRanges = new ArrayList<CalendarData>();
    CalendarData oCalendarData = new CalendarData();
    //oCalendarData.setMainId(lId);
    oCalendarData.setCalendarName(sName);
    oCalendarData.setDescription(sDescription);
    oCalendarData.setDepartmentId(1001);
    oCalendarData.setStartDate(sd1);
    oCalendarData.setEndDate(ed1);
    oCalendarData.setExceptionDates(exceptionDates);
    oCalendarData.setDayIds(day_id);
    oCalendarData.setMonday(1003);
    oCalendarData.setTuesday(1004);
    oCalendarData.setWednesday(1003);
    oCalendarData.setThursday(1003);
    oCalendarData.setFriday(1005);
    oCalendarData.setSaturday(1003);
    oCalendarData.setSunday(1003);
    dateRanges.add(oCalendarData);
    
    oCalendarData = new CalendarData();

    oCalendarData.setCalendarName(sName);
    oCalendarData.setDescription(sDescription);
    oCalendarData.setDepartmentId(1001);
    oCalendarData.setStartDate(sd2);
    oCalendarData.setEndDate(ed2);
    oCalendarData.setMonday(1003);
    oCalendarData.setTuesday(1003);
    oCalendarData.setWednesday(1003);
    oCalendarData.setThursday(1003);
    oCalendarData.setFriday(1003);
    oCalendarData.setSaturday(1003);
    oCalendarData.setSunday(1005);
    dateRanges.add(oCalendarData);
    
    oCalendarData = new CalendarData();

    oCalendarData.setCalendarName(sName);
    oCalendarData.setDescription(sDescription);
    oCalendarData.setDepartmentId(1001);
    oCalendarData.setStartDate(sd3);
    oCalendarData.setEndDate(ed3);
    oCalendarData.setMonday(1003);
    oCalendarData.setTuesday(1005);
    oCalendarData.setWednesday(1003);
    oCalendarData.setThursday(1003);
    oCalendarData.setFriday(1003);
    oCalendarData.setSaturday(1003);
    oCalendarData.setSunday(1003);
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
    <title>View All Calendars</title>
</head>
<body>
    <%-- <h1>THE FIRST START DATE IS: <%=sd1%></h1> --%>
    <%
        try {
            //List<CalendarData> overLappingDateRanges = EgainCalendar.getOverlappingDateRanges(callerContext, oCalendarMainData);
            long id = EgainCalendar.create(callerContext, oCalendarMainData);
            //dateRange = oCalendarMainData.getAttribute("DATE RANGE");
    %>
            <h1>QUERY EXECUTED SUCESSFULLY...</h1>
            <p>The Calendar Main Id is <%= id%></p>
    <%
        } catch (Exception ex){
    %>
            <h1>QUERY EXECUTION FAILED...</h1>
            <p>The exception that occurs is:<break><%=ex%></p>
    <%
        } 
    %>
    
    <form action = "viewAllCalendar.jsp" method = "post">
        <button type="submit">View All Calendar</button>
    </form>
</body>
</html>