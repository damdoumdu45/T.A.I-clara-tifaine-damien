<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%--  <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajouter un bon de sortie</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
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
        <a href="#" onclick="window.location.href='AjoutVue.jsp'">Ajout</a>
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
        <a href="#"><i class="fa-sharp fa-solid fa-gears fa-2xl"></i></a>
    </li>
    <li id="settings">
        <a href="#" onclick="window.location.href='index.html'"><i class="fa-solid fa-bell fa-2xl"></i></a>
    </li>
</ul>


<div class="analytics_graph">
<table class="table table-striped table-hover">
  <thead>
    <tr>
      <th scope="col">Code article</th>
      <th scope="col">Description</th>
      <th scope="col">Quantité en stock</th>
      <th scope="col">Criticité</th>
      <th scope="col">Règle</th>
      <th scope="col">Date du dernier inventaire</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">EHJS454</th>
      <td>Vis</td>
      <td>1798</td>
      <td>Critique</td>
      <td>inférieur 2000</td>
      <td>12/05/23</td>
    </tr>
    
  </tbody>
</table>
</div>

<h1>Bon de sortie</h1>
<div class="container">
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
  		</div>
    </form>
    	
    	<button class="btn_enfer" onclick="window.location.href='Inventaire.jsp'">Enregistrer et fermer</button>
    	
        
	</form>

</body>
</html>