
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%-- <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajouter un bon d'entrée</title>

<link href="" rel="stylesheet" type="text/css">    <link rel="stylesheet" href="AjouterBonEntree.css">

</head>
<body>


<button onclick="window.location.href = 'https://fr.w3docs.com/';">Accueil</button>


<nav>
	<ul>
		<li><a href="">Ajout</a></li>
		<li><a href="">Inventaire</a></li>
		<li><a href="">Calendrier</a></li>
		<li><a href="">Parametre</a></li>
		<li><a href="">?</a></li>
	</ul>
	
	<form>
	<input type="search" name="q" placeholder="Rechercher un article">
	<input type="submit" value="Rechercher">
	</form>
</nav>

<table>
	<tr>
		<th>Code article</th>
		<th>Description</th>
		<th>Quantité en stock</th>
		<th>Criticité</th>
		<th>Règle</th>
		<th>Date du dernier inventaire</th>
	</tr>
	<c:forEach items="${listeProduit}" var="produit">
	<tr>
		<td><c:out value="${produit.code_article}" /> </td>
		<td><c:out value="${produit.description}" /> </td>
		<td><c:out value="${produit.quantite}" /></td>
		<td><c:out value="${produit.criticite}" /></td>
		<td><c:out value="${produit.regle}" /></td>
		<td><c:out value="${produit.date_dernier_inventaire}" /></td>
	</tr>
	</c:forEach>
</table>
	

</body>
</html>