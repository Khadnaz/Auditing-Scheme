<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="ISO-8859-1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/mystyle.css">
  <title>User Register</title>
</head>
<body>
  <div class="container">
    <jsp:include page="common/mainnav.jsp"/>
  </div>

  <h1>USER REGISTER</h1>

  <div class="container">
    <div class="row">
      <div class="col-3"></div>
      <div class="col-6">
        <form action="RegisterOwner" method="post">
          <center><label>Enter UserName</label></center>
          <center><input type="text" name="name1" class="form-control"></center><br>

          <center><label>Enter password</label></center>
          <center><input type="password" name="pass" class="form-control"></center><br>

          <center><label>Enter Email id</label></center>
          <center><input type="email" name="email" class="form-control"></center><br>

          <center><label>Enter MobileNumber</label></center>
          <center><input type="text" name="pnumber" class="form-control"></center><br>

          <center><label>Enter Address</label></center>
          <center><input type="text" name="address" class="form-control"></center><br>

          <center><label>Select User type</label></center>
          <center>
            <select name="userType" class="form-control">
              <option>User</option>
              <option>DataOwner</option>
            </select>
          </center><br>

          <center><input type="submit" value="Register" class="btn btn-success"></center>
        </form>
      </div>
    </div>
  </div>

</body>
</html>