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
        <th>Id</th>
        <th>Roll Number</th>
        <th>Tên</th>
        <th>Danh mục</th>
        <th>Mô tả</th>
        <th>Ảnh</th>
        <th>Giá</th>
        <th>Thời điểm bán</th>
        <th>Cập nhật</th>
        <th>Trạng thái</th>
    </tr>
    <c:foreach item="${list}" var="x">
        <tr>
            <th>${x.id}</th>
            <th>${x.rollNumber}</th>
            <th>${x.name}</th>
            <th>
                <c:if test="x.categoryId == 1">
                    Món nướng
                </c:if>
                <c:if test="x.categoryId == 2">
                    Món luộc
                </c:if>
                <c:if test="x.categoryId == 3">
                    Món chay
                </c:if>
                <c:if test="x.categoryId == 4">
                    Đồ uống
                </c:if>
            </th>
            <th>${x.description}</th>
            <th>${x.thumbnail}</th>
            <th>${x.price}</th>
            <th>${x.soldAt}</th>
            <th>${x.updatedAt}</th>
            <th>${x.status}</th>
            <td>
                <a href="#">Update</a>
                <a href="#" onclick="showMsg(${x.id})">Delete</a>
            </td>
        </tr>
    </c:foreach>
</table>
<a href="create.jsp">Create food</a>
</body>
<script>
    function showMsg(id){
        var option = confirm("Bạn có chắc muốn xóa món ăn này không?");
        if(option === true){
            window.location.href = 'delete?id= ' + id;
        }
    }
</script>
</html>
