<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
%>


<%@ page import="java.util.*"%>
<%@ page import="com.egain.platform.framework.util.calendar.dataobject.*" %>
<%@ page import="com.egain.platform.framework.dataaccess.*"%>
<%@ page import="com.egain.platform.common.CallerContext"%>

<%
    //List<String> requiredAttributeList = new ArrayList<String>();
	//requiredAttributeList.add("channel_id");
    // CREATING CALLERCONTEXT
    CallerContext callerContext = new CallerContext(1, "Partition-1", 12, "Test User");
    CalendarMainData cd = new CalendarMainData();
    cd.setCalendarMainName("FIRST try");
    cd.setId(321);
    
    //cd.setMainId(b);
    long b = cd.getId();
    //cd.setId(234);
    // CREATING DATAACCESSa
    
	//dataAccess.executeUpdate("calendar:createcalendarmain",cd);
	//List<ChannelInfoData> channelInfoDataList = dataAccess.executeSelect("messaginghub::get_all_channel_info_details", null, requiredAttributeList);
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--<link rel="stylesheet" href="teststyle.css">-->
    <title>Testing</title>
</head>

<body>
    <%
        try{
	        DataAccess dataAccess = new DataAccess(callerContext);
            //dataAccess.executeUpdate("calendarmain:createcalendarmain",cd);
            //b = dataAccess.getNewId("EGPL_CALENDAR_MAIN");
            //cd.setAttribute
        } catch (Exception ex) {
    %>
            <h1>Query Not Executed</h1>
    <%
        }
        //dataAccess.executeUpdate("calendarmain:createcalendarmain",cd);
    %>
    <form>
        <h1>Okay it works, the value is  <%= b %></h1>
        <input type="date" name="asd" />
    </form>
</body>

</html>