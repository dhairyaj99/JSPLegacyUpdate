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
  <label for="firstName">Prénom:</label>
  <input type="text" id="firstName" name="firstName">
  <br><br>
  <label for="lastName">Nom de famille:</label>
  <input type="text" id="lastName" name="lastName">
  <br><br>
  <label for="email">Email:</label>
  <input type="email" id="email" name="email">
  <br><br>
  <label for="address">Adresse:</label>
  <input type="text" id="address" name="address">
  <br><br>
  <label for="gender">Sexe:</label>
  <select id="gender" name="gender">
    <option value="male">Homme</option>
    <option value="female">Femme</option>
  </select>
  <br><br>
  <label for="occupation">Profession:</label>
  <input type="text" id="occupation" name="occupation">
  <br><br>
  <input type="submit" value="Submit">
</form>

</body>
</html>
