<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp" %>
</head>
<body>
<div class="container mt-3">
<div class="row">
<div class="col-md-12">
<h1 class="text-center mb-3">Employee Management System</h1>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">NAME</th>
      <th scope="col">PHONE NO.</th>
      <th scope="col">DEPARTMENT</th>
      <th scope="col">ADDRESS</th>
      <th scope="col">ACTION</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${employee }" var="e">
    <tr>
      <th scope="row">${e.id }</th>
      <td>${e.name }</td>
      <td>${e.phone }</td>
      <td>${e.department }</td>
      <td>${e.address }</td>
      <td>
      <a href="delete/${e.id }"><button type="button" class="btn btn-outline-danger">Delete</button></a>
      <a href="update/${e.id }"><button type="button" class="btn btn-outline-success">Edit</button></a>
    </td>
    </tr>
   </c:forEach>
  </tbody>
</table>
<div class="container text-center">

<a href="add-employee"><button type="button" class="btn btn-success ">Add</button></a>

</div>
</div>
</div>
</div>
</body>
</html>