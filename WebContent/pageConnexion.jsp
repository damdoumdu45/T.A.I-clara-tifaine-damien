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
<div class="card emails-card">

<h2 style="text-align:center">Connexion</h2>
<div class = "logo">
<p style="text-align:center"><img src="logo.png" width="225px"></p>
</div>
<form style="text-align:center" action="MembreControleur" method="post">
<p>Adresse mail <input type="text" name="mail" /> <br /></p>
<p>Mot de passe <input type="text" name="mdp" /> <br /></p>
<p><input type="submit" /></p>
</form>


<button class="btn-round" onclick="window.location.href='AjoutEmploye.jsp'"><span>+</span></button>
</div>
</body>
</html>