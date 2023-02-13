<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Language Selection</title>
</head>
<body>

<form action="" method="post">
  <select name="language">
    <option value="en">English</option>
    <option value="fr">French</option>
  </select>
  <input type="submit" value="Submit">
</form>

<%
String language = request.getParameter("language");
if (language != null) {
    if (language.equals("en")) {
        response.sendRedirect("en.jsp");
    } else if (language.equals("fr")) {
        response.sendRedirect("fr.jsp");
    }
}
%>

</body>
</html>
