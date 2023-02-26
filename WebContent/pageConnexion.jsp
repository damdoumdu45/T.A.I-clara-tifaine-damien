<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Hoffgevouet</title>
</head>
<body>
<h2>Connexion</h2>
<form action="MembreControleur" method="post">
mail : <input type="text" name="mail" /> <br />
mdp : <input type="text" name="mdp" /> <br />
<input type="submit" />
</form>

<h3>Ajouter un nouvel employe</h3>
<form action="MembreControleur" method="post">
nom : <input type="text" name="nom" /> <br />
prenom : <input type="text" name="prenom" /> <br />
mail : <input type="text" name="mail" /> <br />
mdp : <input type="text" name="mdp" /> <br />
<input type="submit" />
</form>
</body>
</html>