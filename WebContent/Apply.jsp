<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply page</title>
</head>
<style>
* {box-sizing: border-box}
/* Add padding to containers */
.container {
  padding: 16px;
}
/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}
/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
/* Set a style for the submit/register button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 30%;
  opacity: 0.9;
}
.registerbtn:hover {
  opacity:1;
}
/* Add a blue text color to links */
a {
  color: dodgerblue;
}
/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>

<body>

<form action="SubmitJobApplication" method="post">
  <div class="container">
    <h1>Apply</h1>
    <hr>

	<label ><b>Job Id</b></label>
    <input type="text"  name="jid"  value="<%=request.getAttribute("jid") %>" readonly><br>

	<label ><b>Company Name</b></label>
    <input type="text"  name="Cname"  value="<%=request.getAttribute("Company") %>" readonly><br>

    <label ><b>Company mail</b></label>
    <input type="text"  name="Cmail"  value="<%=request.getAttribute("cmail") %>" readonly><br>
    
     <label ><b>Job Title</b></label>
    <input type="text"  name="Jtitle" value="<%=request.getAttribute("title") %>" readonly><br>
    
    <label for="email"><b>Candidate Email</b></label>
    <input type="text" name="umail" placeholder="Enter Email" name="email"  value="<%=request.getAttribute("umail") %>" readonly=><br>

    <label ><b>Full Name</b></label>
    <input type="text" name="Fname" placeholder="Enter FullName" name="name" required><br>

    <label ><b>Mobile Number</b></label>
    <input type="text" name="Mobile" placeholder="Enter Mobile.No " name="number" required><br>
    
    <label ><b>Skills Matched</b></label>
    <input type="text" name="skill" placeholder="Enter skills matched as per required " name="skill" required><br>
    
   
    
    <hr>
    <button type="submit" class="registerbtn">Submit</button>
  </div>
</form>

</body>
</html>