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
     <div class="search">
    	<input type="text" class="search__input" placeholder="Rechercher">
    		<button class="search__button">
        		<svg class="search__icon" aria-hidden="true" viewBox="0 0 24 24">
            		<g>
               			<path d="M21.53 20.47l-3.66-3.66C19.195 15.24 20 13.214 20 11c0-4.97-4.03-9-9-9s-9 4.03-9 9 4.03 9 9 9c2.215 0 4.24-.804 5.808-2.13l3.66 3.66c.147.146.34.22.53.22s.385-.073.53-.22c.295-.293.295-.767.002-1.06zM3.5 11c0-4.135 3.365-7.5 7.5-7.5s7.5 3.365 7.5 7.5-3.365 7.5-7.5 7.5-7.5-3.365-7.5-7.5z"></path>
            		</g>
        		</svg>
    		</button>
	</div>
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