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
        <form method = "get" action = "arithmetic">
            <h1>Arithmetic Calculator</h1>
        
            <label>First </label><input id="first" type = "number"><br>
            <label>Second </label><input id="second" type = "number"><br>
                <input type="submit" value = "+" onclick= add(first, second)>
                <input type="submit" value = "-" onclick= minus(first, second)>
                <input type="submit" value = "*" onclick= multiply(first, second)>
                <input type="submit" value = "%" onclick= remainder(first, second)>
            <br>
            <label>Result: ${message}</label><br>
        </form>
        <a href = "age">Age Calculator</a>
    </body>
</html>
