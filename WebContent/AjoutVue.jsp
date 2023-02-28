<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<link rel="stylesheet" type="text/css" href="style.css" />

<body>

<ul class="nav">
	<li>
        <a href="Accueil">Accueil</a>
    </li>
    <li>
        <a href="#">Ajout</a>
    </li>
    <li>
        <a href="#">Inventaire</a>
    </li>
    <li id="options">
        <a href="#">Calendrier</a>
        <ul class="subnav">
            <li><a href="#">Calendrier des inventaires</a></li>
            <li><a href="#">Historique des entrées/sorties</a></li>
        </ul>
    </li>
    <li id="search">
        <form action="" method="get">
            <input type="text" name="search_text" id="search_text" placeholder="Rechercher un article"/>
            <input type="button" name="search_button" id="search_button">
        </form>
    </li>
    <li id="settings">
        <a href="#"><img src="settings.png" /></a>
    </li>
    <li id="settings">
        <a href="#"><img src="bell1.png" /></a>
    </li>
</ul>

<h2>Les employés</h2>
<h3>Ajouter un nouvel employé</h3>

<form action="AjoutControleur" method="post">

description : <input type="text" name="description" /> <br />
code_article : <input type="text" name="code_article" /> <br />
date_de_creation : <input type="text" name="date_de_creation" /> <br />
fournisseur : <input type="text" name="fournisseur" /> <br />
regle : <input type="text" name="regle" /> <br />

<input type="submit" />
</form>

<%-- <table>

<tr>
<th>id</th>
<th>description</th>
<th>code_article</th>
<th>date_de_creation</th>
<th>fournisseur</th>
<th>regle</th>
</tr>

<c:forEach items="${employeListe}" var="inventaire">
<tr>
<td><c:out value="${inventaire.id}" /> </td>
<td><c:out value="${inventaire.description}" /> </td>
<td><c:out value="${inventaire.code_article}" /></td>
<td><c:out value="${inventaire.date_de_creation}" /></td>
<td><c:out value="${inventaire.fournisseur}" /></td>
<td><c:out value="${inventaire.regle}" /></td>
</tr>
</c:forEach>
</table> --%>

</body>
</html>