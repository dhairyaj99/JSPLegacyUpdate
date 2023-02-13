<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="javax.xml.parsers.DocumentBuilder" %>
<%@ page import="javax.xml.parsers.DocumentBuilderFactory" %>
<%@ page import="org.w3c.dom.Document" %>
<%@ page import="org.w3c.dom.NodeList" %>
<%@ page import="org.w3c.dom.Node" %>
<%@ page import="org.w3c.dom.Element" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Simple Form</title>
</head>
<body>

<%
  String language = request.getParameter("language");
  String fileName = "en.xml";
  if (language != null && language.equals("fr")) {
    fileName = "fr.xml";
  }
  String filePath = application.getRealPath("/WEB-INF/" + fileName);
  DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
  DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
  Document doc = dBuilder.parse(filePath);
  NodeList labelNodes = doc.getElementsByTagName("label");
  String firstName = "", lastName = "", email = "", address = "", gender = "", occupation = "";
  for (int i = 0; i < labelNodes.getLength(); i++) {
    Node labelNode = labelNodes.item(i);
    if (labelNode.getNodeType() == Node.ELEMENT_NODE) {
      Element labelElement = (Element) labelNode;
      String key = labelElement.getAttribute("key");
      String value = labelElement.getTextContent();
      if (key.equals("firstName")) {
        firstName = value;
      } else if (key.equals("lastName")) {
        lastName = value;
      } else if (key.equals("email")) {
        email = value;
      } else if (key.equals("address")) {
        address = value;
      } else if (key.equals("gender")) {
        gender = value;
      } else if (key.equals("occupation")) {
        occupation = value;
      }
    }
  }
%>

<form>
  <div>
    <label><%=firstName%>:</label>
    <input type="text" name="firstName">
  </div>
  <div>
    <label><%=lastName%>:</label>
    <input type="text" name="lastName">
  </div>
  <div>
    <label><%=email%>:</label>
    <input type="text" name="email">
  </div>
  <div>
  	<label><%=address%>:</label>
  	<input type="text" name="address">
  </div>
  <div>
  	<label><%=gender%>:</label>
  	<input type="text" name="gender">
  </div>
  <div>
  	<label><%=occupation%>:</label>
  	<input type="text" name="occupation">
  </div>
</form>