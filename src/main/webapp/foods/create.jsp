<%@ page import="entity.Food" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="helper.ValidateConstant" %><%--
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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Create new food</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <style>
        .error-msg {
            color: red;
        }
    </style>
</head>
<body>
<form action="/foods/create" method="post">
    <div>
        Rollnumber <input type="text" name="rollNumber" value="<%=food.getRollNumber()%>">
        <span class="error-msg">
            <ul>
                <%
                    if (errors.containsKey(ValidateConstant.STUDENT_FIELDNAME_ROLLNUMBER)) {
                        ArrayList<String> rollNumberErrors = errors.get(ValidateConstant.STUDENT_FIELDNAME_ROLLNUMBER);
                        for (String msg :
                                rollNumberErrors) {
                %>
                <li><%= msg%></li>
                <%
                        }
                    }%>
            </ul>
        </span>
    </div>
    <div>
        Name <input type="text" name="fullName" value="<%=food.getName()%>">
    </div>
    <div>
        Category
        <select name="">
            <option>Món nướng</option>
            <option>Món luộc</option>
            <option>Món chay</option>
            <option>Đồ uống</option>
        </select>
    </div>
    <div>
        <input type="submit" value="Submit">
        <input type="reset" value="Reset">
    </div>
</form>
</body>
</html>
