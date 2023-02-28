
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%-- <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajouter un bon d'entr�e</title>

<link href="" rel="stylesheet" type="text/css">    <link rel="stylesheet" href="styleAjoutProduit.css">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>  
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">  
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

<script src="https://kit.fontawesome.com/449d8f2d0f.js" crossorigin="anonymous"></script>

</head>
<body>

<ul class="nav">
	<li>
        <a href="#" onclick="window.location.href='Accueil.jsp'">Accueil</a>
    </li>
    <li>
        <a href="#" onclick="window.location.href='AjoutProduit.jsp'">Ajout</a>
    </li>
    <li>
        <a href="#" onclick="window.location.href='Inventaire.jsp'">Inventaire</a>
    </li>
    <li id="options">
        <a href="#">Calendrier</a>
        <ul class="subnav">
            <li><a href="#" onclick="window.location.href='Calendrier.jsp'" >Calendrier des inventaires</a></li>
            <li><a href="#"onclick="window.location.href='Historique.jsp'">Historique des entr�es/sorties</a></li>
        </ul>
    </li>
    <li id="search">
        <form action="" method="get">
            <input type="text" name="search_text" id="search_text" placeholder="Rechercher un article"/>
            <!--  <input type="button" name="search_button" id="search_button">-->
            <button id="search_button"><i class="fa-solid fa-magnifying-glass fa-2xl"></i></button>
        </form>
    </li>
    <li id="settings">
        <a href="#"><i class="fa-sharp fa-solid fa-gears fa-2xl"></i></a>
    </li>
    <li id="settings">
        <a href="#"><i class="fa-solid fa-bell fa-2xl"></i></a>
    </li>
</ul>

<table>
	<tr>
		<th>Code article</th>
		<th>Description</th>
		<th>Quantit� en stock</th>
		<th>Criticit�</th>
		<th>R�gle</th>
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

<h1>Bon d'entr�e</h1>

<div class="analytics_graph">
	
	<form action="sauvegarderDonnees" method="POST">
		<div class="cdd">
    	<label for="code_article">Code article :</label>
    	<input type="text" id="code_article" name="code_article"><br>
    	</div>
    	
    	<div class="qtt">
    	<label for="quantite">Quantit� :</label>
    	<input type="text" id="quantite" name="quantite"><br>
    	</div>
    	
    	<div class="dtcrea">
    	
    	<form>    
    		<label for="datepicker">S�lectionnez une date :</label>    
    		<input type="date" id="datepicker">  
    	</form>  
    	<script>    
    		$(function() {
    			$("#datepicker").datepicker();
    		});
  		</script>
  		</div>
    </form>
    	
    	<button class="btn_enfer" onclick="window.location.href='Inventaire.jsp'">Enregistrer et fermer</button>
	
</div>
</body>
</html>