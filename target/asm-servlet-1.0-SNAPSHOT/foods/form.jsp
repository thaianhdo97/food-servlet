<%@ page import="entity.Food" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Thai Anh
  Date: 05/20/2021
  Time: 11:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Food food = (Food) request.getAttribute("food");
    HashMap<String, ArrayList<String>> errors = (HashMap<String, ArrayList<String>>) request.getAttribute("errors");
    if (food == null) {
        food = new Food();
    }
    if (errors == null) {
        errors = new HashMap<>();
    }
%>
<html>
<head>
    <title>Create new food</title>
</head>
<body>

</body>
</html>
