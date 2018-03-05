<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
    <link rel="stylesheet" type="text/css" href="style\Signupstyle.css">
    <title>hello brothers</title>
    <header id=head>
        <h1>welcome to SignUp page</h1>
    <script  type="text/javascript" src="script\validate.js"></script>
    </header>
    <div class="inform" >
        <h1>My Page is free and always will be like Facebook with connecting people</h1>
        <img src="GwFs3_KxNjS.png" class="brotherhood" title="ashish" alt="smiley">
        
    </div>
    
    <div class=signup >
        <img src="smiley1.png" class=avatar>
       <marquee direction="left" behavior="alternate" ><h2>SignUp here</h2></marquee> 
        <form action="SignUp" onsubmit= "return validation();" method="post">
            <label for="uname">Enter your Name<span style="color:red">*</span>:</label><br><input type="text" id="uname" name="uname" placeholder="Username"required="required"><br>
            <label for="pass">Enter your password<span style="color:red">*</span>:</label><br><input type="password" id="pass" name="Pass" placeholder="password"required="required"><br>
            <label for="password1">Re-enter your password<span style="color:red">*</span>:</label><br><input type="password" id="password1" name="Password1" placeholder="Password"required="required"><br>
            <label for="date">Enter your date of birth:</label><br><input type="date" name= "date" id="date" placeholder="14-07-1993"required="required"><br>
            <label for="tel">Enter ur mobile number<span style="color:red">*</span></label><br><input type="tel" id="tel" name="tel" placeholder="mobile no."required="required"><br>
            <input type="submit" value="SignUp" >
            <button type="reset">reset</button>
            <p id=returnl><a href="index.jsp">Already have an account</a></p>
       </form>
    </div>
</html>