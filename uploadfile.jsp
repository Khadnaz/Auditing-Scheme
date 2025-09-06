<%@page import="com.util.ProjectUtil"%>
<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/mystyle.css">
  <title>Upload File</title>
</head>
<body>
  <jsp:include page="common/DataOwnernav.jsp"/>
  <div class="container">
    <%
      Integer uidObj = (Integer)session.getAttribute("userid");
      int userid = (uidObj==null)?0:uidObj;
      String message = (String)request.getAttribute("message");
    %>

    <% if(message==null){ %>
      welcome <%= (userid!=0 ? ProjectUtil.getOwner(userid).getName() : "") %>
    <% } else { %>
      <p style="color:red;"><%=message %></p>
    <% } %>

    <form action="uploadfile" method="post" enctype="multipart/form-data">
      <label>Enter File Name</label>
      <input type="text" name="fileName" class="form-control"><br>
      <input type="file" name="file" class="form-control"><br>
      <input type="hidden" value="<%=userid%>" name="userid">

      <input type="checkbox" name="id" value="student"> Student<br>
      <input type="checkbox" name="id" value="professor"> Professor<br>
      <input type="checkbox" name="id" value="principal"> Principal<br><br>

      <input type="submit" value="submit" class="btn btn-success">
    </form>
  </div>
</body>
</html>