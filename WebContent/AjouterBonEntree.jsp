
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%-- <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajouter un bon d'entrée</title>

<link href="" rel="stylesheet" type="text/css">    <link rel="stylesheet" href="ajouterBonEntree.css">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>  
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">  
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

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
            <li><a href="#"onclick="window.location.href='Historique.jsp'">Historique des entrées/sorties</a></li>
        </ul>
    </li>
    <li id="search">
        <form action="" method="get">
            <input type="text" name="search_text" id="search_text" placeholder="Rechercher un article"/>
            <input type="button" name="search_button" id="search_button"></a>
        </form>
    </li>
    <li id="settings">
        <a href="#"><img src="settings.png" /></a>
    </li>
    <li id="settings">
        <a href="#"><img src="bell1.png" /></a>
    </li>
</ul>

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


<div class="analytics_graph">
	<form action="sauvegarderDonnees" method="POST">
		<div class="cdd">
    	<label for="code_article">Code article :</label>
    	<input type="text" id="code_article" name="code_article"><br>
    	</div>
    	
    	<div class="qtt">
    	<label for="quantite">Quantité :</label>
    	<input type="text" id="quantite" name="quantite"><br>
    	</div>
    	
    	<div class="dtcrea">
    	
    	<form>    
    		<label for="datepicker">Sélectionnez une date :</label>    
    		<input type="date" id="datepicker">  
    	</form>  
    	<script>    
    		$(function() {
    			$("#datepicker").datepicker();
    		});
  		</script>
    </form>
    	
    	<button class="btn_enfer" onclick="window.location.href='Inventaire.jsp'">Enregistrer et fermer</button>
	
</div>
</body>
</html>