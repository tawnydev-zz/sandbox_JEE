<%@page import="java.util.Enumeration" %>
<%@page import="java.util.Locale" %>
<%@page import="java.util.Properties" %>
<%@ taglib uri="/WEB-INF/tlds/information.tld" prefix="info" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String langue = request.getLocale().getCountry();
String pays="un pays inconnu";
Locale requestLocale=Locale.FRENCH;

Enumeration<Locale> locales = request.getLocales();
Locale locale = (Locale) locales.nextElement();
pays=locale.getDisplayCountry();

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sandbox</title>
</head>
<body>
	<h1>Bienvenu sur <info:lenom /></h1>
	Nous sommes le <info:ladate />, vous êtes situé en <%=pays %>.
</body>
</html>