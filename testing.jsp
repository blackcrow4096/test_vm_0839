<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
%>


<%@ page import="java.util.*"%>
<%@ page import="com.egain.platform.module.integration.clientapp.dataobject.*" %>
<%@ page import="com.egain.platform.module.integration.clientapp.*" %>
<%@ page import="com.egain.platform.framework.dataaccess.*"%>
<%@ page import="com.egain.platform.common.CallerContext"%>

<%
    //List<String> requiredAttributeList = new ArrayList<String>();
	//requiredAttributeList.add("channel_id");
    // CREATING CALLERCONTEXT
    CallerContext callerContext = new CallerContext(1, "Partition-1", 12, "Test User");
    ApplicationDO appDo = new ApplicationDO();
    List<Secret> listOfSecrets = new ArrayList<Secret>();
    List<ApplicationPermission> listOfApplicationPermission = new ArrayList<ApplicationPermission>();
    List<DelegatedPermission> listOfDelegatedPermission = new ArrayList<DelegatedPermission>();
    Web web = new Web();
    //Spa spa = new Spa();
    PublicClient publicClient = new PublicClient();

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
            long id = 1000;
            appDo.setId(id);
            appDo.setObjectId("UPDATED_some Object Id 102");
            appDo.setAppId("Some app ID 101");
            appDo.setDisplayName("some Display Name 101");
            appDo.setDescription("some Description 101");
            appDo.setPasswordCredentials(listOfSecrets);
            appDo.setApplicationPermissions(listOfApplicationPermission);
            appDo.setDelegatedPermissions(listOfDelegatedPermission);
            appDo.setWeb(web);
            //appDo.setSpa(spa);
            appDo.setPublicClient(publicClient);

            ApplicationDAO ap = new ApplicationDAO();
            //ap.insertClientApplicationDB(callerContext, appDo);
            //ap.updateClientApplicationDB(callerContext, appDo);
            //ap.deleteClientApplicationDB(callerContext, id);
            List<ApplicationDO> listOfApps = new ArrayList<ApplicationDO>();
            //appDo = ap.getClientApplicationDBById(callerContext, id);
            listOfApps = ap.getAllClientApplicationsDB(callerContext);
            %>
                <h1><%=appDo%></h1>
                <h1><%=listOfApps%></h1>
                
            <%
            
        } catch (Exception ex) {
    %>
            <h1>Query Not Executed</h1>
    <%
        }
    %>
</body>

</html>