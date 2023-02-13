<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form</title>
</head>
<body>

<form>
  <label for="firstName">First Name:</label>
  <input type="text" id="firstName" name="firstName">
  <br><br>
  <label for="lastName">Last Name:</label>
  <input type="text" id="lastName" name="lastName">
  <br><br>
  <label for="email">Email:</label>
  <input type="email" id="email" name="email">
  <br><br>
  <label for="address">Address:</label>
  <input type="text" id="address" name="address">
  <br><br>
  <label for="gender">Gender:</label>
  <select id="gender" name="gender">
    <option value="male">Male</option>
    <option value="female">Female</option>
  </select>
  <br><br>
  <label for="occupation">Occupation:</label>
  <input type="text" id="occupation" name="occupation">
  <br><br>
  <input type="submit" value="Submit">
</form>

</body>
</html>
