<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style/style1.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
 response.setHeader("Cache-Control","no-cache");
 response.setHeader("Cache-Control","no-store");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader ("Expires", 0);
if(session.getAttribute("uname")== null)
{
	response.sendRedirect("index.jsp?pleaselogin=first");
}
%>
<div id="settings">
 <ul>
      <li><image src="settings.png" alt="setting" title="settings" class="avatar23">
        <ul id="haris" class="lefty">
          <li><a>change username</a></li>
          <li><a>change password</a></li>
            <li><a href="daojsp/Logout.jsp">logout</a></li>
        </ul>
     </li>
    </ul>
 </div>
<div id=video>
<iframe width="560" height="315" src="https://www.youtube.com/embed/gQLQ0t9B5yk" ></iframe>
<br>
</div>
<body>
</body>
</html>