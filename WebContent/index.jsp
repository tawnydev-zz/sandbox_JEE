<%@page import="java.util.Enumeration" %>
<%@page import="java.util.Locale" %>
<%@page import="java.util.Properties" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/WEB-INF/tlds/information.tld" prefix="info" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<%
//recuperation du pays
String langue = request.getLocale().getCountry();
String pays="un pays inconnu";
Locale requestLocale=Locale.FRENCH;

Enumeration<Locale> locales = request.getLocales();
Locale locale = (Locale) locales.nextElement();
pays=locale.getDisplayCountry();

//recuperation de l'adresse IP
String ip = request.getRemoteAddr();
String user_agent = request.getHeader("User-Agent");
String proxy = request.getHeader("Forwarded");
%>

<jsp:useBean id="leClient" class="domain.client" scope="page"/>
<jsp:setProperty property="ip" name="leClient" value="<%=ip %>"/>
<jsp:setProperty property="user_agent" name="leClient" value="<%=user_agent %>"/>

<!DOCTYPE web-app PUBLIC '-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN' 'http://java.sun.com/dtd/web-app_2_3.dtd'>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sandbox</title>
</head>
<body>
	<h1>Bienvenu sur <info:lenom /></h1>
	Nous sommes le <info:ladate />, vous êtes situé en <%=pays %>.<br>
	Votre adresse IP est ${leClient.ip}.<br>
	Vous utilisez le navigateur ${leClient.user_agent}.<br>
	<c:if test="${proxy != null}">
		Nous avons détécté que vous utilisez un proxy.
	</c:if>
</body>
</html>