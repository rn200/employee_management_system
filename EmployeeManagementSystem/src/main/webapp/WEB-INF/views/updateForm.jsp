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
<h1 class="text-center mb-3">Change Employee Details</h1>

<form action="${pageContext.request.contextPath }/handleEmployee" method="post">
<input type="text" value=" ${emp.id }" name="id">

  <div class="form-group">
    <label for="name">Employee Name</label>
    <input 
    type="text" 
    class="form-control" 
    id="name"  
    placeholder="Enter employee name"
    name="name"
    value="${emp.name }">
  
  </div>
  
  <div class="form-group">
    <label for="ph. no"> Phone no.</label>
    <input 
    type="text" 
    class="form-control" 
    id="phone no."  
    placeholder="Enter employee ph. no"
    name="phone"
    value="${emp.phone }">
  
  </div>
  
   <div class="form-group">
    <label for="department"> Department</label>
    <input 
    type="text" 
    class="form-control" 
    id="department"  
    placeholder="Enter employee ph. no"
    name="department"
    value="${emp.department }">
  
  </div>
  
   <div class="form-check">
    <input 
    type="checkbox" 
    class="form-check-input" 
    id="status" 
    name="status"
    value="${emp.status }">
    <label class="form-check-label" for="exampleCheck1">Working Status</label>
  </div>
  
   <div class="form-group">
   
    <label for="address">Address</label>
    <textarea 
    class="form-control" 
    id="exampleFormControlTextarea1" rows="3"
    name="address">${emp.address }</textarea>
    
  </div>
  
  <div class="container text-center">
    <a href="${pageContext.request.contextPath }/home" 
  class="btn btn-outline-danger">Back</a>
  <button class="btn btn-warning" type="submit">update</button>
  </div>
</form>
</div>
</div>
</div>
</body>
</html>