<%@page import="java.util.List"%>
<%@page import="com.models.OwnerModel"%>
<%@page import="com.dao.ConnectionClass"%>
<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/mystyle.css">
  <title>Approve Owners</title>
</head>
<body>
  <jsp:include page="common/kgcnav.jsp"/>

  <%
    String message = (String)request.getAttribute("message");
    if(message!=null){
  %>
      <p style="color:white;"><%=message %></p>
  <%
    }
  %>

  <div class="container">
    <table class="table table-bordered">
      <tr>
        <td>User Id</td>
        <td>Name</td>
        <td>Email</td>
        <td>Phone</td>
        <td>Approve</td>
      </tr>
      <%
        ConnectionClass cc = new ConnectionClass();
        List<OwnerModel> om = cc.getOwnersList();
        for(OwnerModel om1: om){
      %>
        <tr>
          <td><%= om1.getUserid() %></td>
          <td><%= om1.getName() %></td>
          <td><%= om1.getEmail() %></td>
          <td><%= om1.getPnumber() %></td>
          <td><a href="Approve?userid=<%=om1.getUserid()%>">approve</a></td>
        </tr>
      <% } %>
    </table>
  </div>
</body>
</html>