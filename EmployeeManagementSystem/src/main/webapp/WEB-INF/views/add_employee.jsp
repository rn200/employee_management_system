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
<div class="col-md-6 offset-md-3">
<h1 class="text-center mb-3">Fill The Employee Details</h1>

<form action="handleEmployee" method="post">

  <div class="form-group">
    <label for="name">Employee Name</label>
    <input 
    type="text" 
    class="form-control" 
    id="name"  
    placeholder="Enter employee name"
    name="name">
  
  </div>
  
  <div class="form-group">
    <label for="ph. no"> Phone no.</label>
    <input 
    type="text" 
    class="form-control" 
    id="phone no."  
    placeholder="Enter employee ph. no"
    name="phone">
  
  </div>
  
   <div class="form-group">
    <label for="department"> Department</label>
    <input 
    type="text" 
    class="form-control" 
    id="department"  
    placeholder="Enter employee department "
    name="department">
  
  </div>
  
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="status" name="status">
    <label class="form-check-label" for="exampleCheck1">Working Status</label>
  </div>
  
   <div class="form-group">
   
    <label for="address">Address</label>
    <textarea 
    class="form-control" 
    id="exampleFormControlTextarea1" rows="3"
    name="address"></textarea>
    
  </div>
  
  <div class="container text-center">
    <a href="${pageContext.request.contextPath }/home" 
  class="btn btn-outline-danger">Back</a>
  <button class="btn btn-primary" type="submit">Add</button>
  </div>
</form>
</div>
</div>
</div>
</body>
</html>