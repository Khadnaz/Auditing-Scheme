<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="ISO-8859-1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/mystyle.css">
  <title>TPA Login</title>
</head>
<body>
  <div class="container">
    <jsp:include page="common/mainnav.jsp"/>
  </div>

  <div class="container" style="margin-top:100px;">
    <center><h1>TPA LOGIN</h1></center>
    <form action="TPALogin" method="get">
      <center><label class="myfont text-danger" style="margin-bottom:10px;">Enter User Name</label></center>
      <center><input type="text" name="username"></center><br>

      <center><label class="myfont text-danger" style="margin-bottom:10px;">Enter Password</label></center>
      <center><input type="password" name="pass" style="margin-bottom:10px;"></center>

      <center><input type="submit" value="Login" class="btn btn-success" style="margin-top:10px;"></center>
      <div style="margin-top:15px;"></div>
    </form>
  </div>
</body>
</html>