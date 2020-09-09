<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body
{font-family: Arial, Helvetica, sans-serif;
padding:30px;
margin:30px;
border:30px;
}
h3{
text-align: center;
}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 16px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: black;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: green;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>

<h3>Add Job Details</h3>

<div class="container">
  <form action="AddJob" method="get">
    <label for="jname">Job Title</label>
    <input type="text" id="fname" name="jtitle" placeholder="enter job title..">

    <label for="lname">Req.Skills</label>
    <input type="text" id="lname" name="reqskills" placeholder="Req skills....">


    <label for="subject">Job Description</label>
    <textarea id="subject" name="desc" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
