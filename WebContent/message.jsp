<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<script type=text/javascript src="script/validate.js"></script>
<title>home page</title>
<%
 response.setHeader("Cache-Control","no-cache");
 response.setHeader("Cache-Control","no-store");
 response.setHeader("Pragma","no-cache");
 response.setDateHeader ("Expires", 0);
if(session.getAttribute("uname")==null)
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
<head>
<link rel=stylesheet type="text/css" href="style/style1.css">
     
</head>

<header>
<% String uname1 = (String)session.getAttribute("uname"); %>
<h1>
	This is
	<%=uname1%>
	page
   
</h1>
</header>
<body>
    
	<div class=UserDetails>
        <label for="pics">upload pics for ur friends</label>
        <input type="file" name="file" id="pics">   
		<p>what can i say, this is my first project given by my friend</p>
		<form action="videos.jsp">
			<input id="vid" type="submit" value="videos">
		</form>
	</div>
</body>
</html>