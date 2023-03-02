<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="" rel="stylesheet" type="text/css">    <link rel="stylesheet" href="styleAjoutProduit.css">
<title>Hoffgevouet</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/4.0.0/core.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/crypto-js/3.1.9-1/md5.js"></script>
</head>
<body>
<h1>Ajouter un nouvel employe</h1>
<div class="container">
	<form style="text-align:center" action="MembreControleur" method="post">
		<p class ="jiji">Adresse mail </p><input type="text" name="mail" /> <br />
		<p class="jiji">Mot de passe</p><input class="popo" type="text" name="mdp" /> <br />
		<input class="btn_co" type="submit" onclick="alert('Nouvel employé ajouté')"/>
		
		
		<a class="btn_re" href="#" onclick="window.location.href='pageConnexion.jsp'">Retour</a>
	
	</form>
</div>

</body>
</html>