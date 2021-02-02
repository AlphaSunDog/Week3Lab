
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
    </head>
    <body>
        <h1>Age Calculator</h1>
        <label>Enter your age: </label>
        <input type = "number" name = "ageinput" value = "${ageinput}"><br>
        <input type="button" value="Age next birthday" onclick="Your age next birthday will be" ${ageinput+1}><br>
        <p>${message}</p>
        <a href = "arithmetic">Arithmetic Calculator</a>
    </body>
</html>
