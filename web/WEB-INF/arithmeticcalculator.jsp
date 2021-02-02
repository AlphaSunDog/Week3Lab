<%-- 
    Document   : arithmeticcalculator
    Created on : Jan 27, 2021, 9:34:10 AM
    Author     : 815267
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
    </head>
    <body>
        <h1>Arithmetic Calculator</h1>
        
        <label>First </label><input id="first" type = "number"><br>
        <label>Second </label><input id="first" type = "number"><br>
            <input type="button" value="+" onclick= ${message} = first + second>
            <input type="button" value="-" onclick= ${message} = first - second>
            <input type="button" value="*" onclick= ${message} = first * second>
            <input type="button" value="%" onclick= ${message} = first % second>
        <br>
        <label>Result: ${message}</label><br>
        <a href = "age">Age Calculator</a>
    </body>
</html>
