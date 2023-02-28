<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	
<%--<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Hoffgevouet</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>

<h1 style="text-align:center">Connectez-vous</h1>

<div class="analytics_connect">


<div style="margin-top:30px;margin-bottom:30px" "class = "logo">
<p style="text-align:center"><img src="logo.png" width="225px"></p>
</div>
<form style="text-align:center" action="ConnexionControleur" method="get">
	<p class="jiji">Adresse mail </p><input type="text" name="mail" /> <br />

	<p class="jiji">Mot de passe </p><input class="popo" type="password" name="mdp" /> <br />

	<p><input class="btn_co" type="submit" /></p>
</form>


<button class="btn-round" style="margin-top:20px" onclick="window.location.href='AjoutEmploye.jsp'"><span>+</span></button>
</div>
</body>
</html>