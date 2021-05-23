<%@ page import="entity.Food" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: Thai Anh
  Date: 05/20/2021
  Time: 11:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ArrayList<Food> listFood = (ArrayList<Food>) request.getAttribute("list");
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>List Foods</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
</head>
<body>
<h1>List Foods</h1>
<table border="1px solid black">
    <tr>
        <th>Roll Number</th>
        <th>Name</th>
        <th>Category</th>
        <th>Description</th>
        <th>Thumbnail</th>
        <th>Price</th>
        <th>Sold At</th>
        <th>Updated At</th>
        <th>Status</th>
    </tr>
    <c:foreach item="${list}" var="x">
        <tr>
            <th>${x.rollNumber}</th>
            <th>${x.name}</th>
            <th>${x.categoryId}</th>
            <th>${x.description}</th>
            <th>${x.thumbnail}</th>
            <th>${x.price}</th>
            <th>${x.soldAt}</th>
            <th>${x.updatedAt}</th>
            <th>${x.status}</th>
        </tr>
    </c:foreach>
</table>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
</body>
</html>
