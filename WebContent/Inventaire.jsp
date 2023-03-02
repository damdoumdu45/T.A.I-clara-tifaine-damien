<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Inventaire</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css" />
<script src="https://kit.fontawesome.com/449d8f2d0f.js" crossorigin="anonymous"></script>
</head>
<body>
<ul class="nav">
	<li>
        <a href="#" onclick="window.location.href='Accueil.jsp'">Accueil</a>
    </li>
    <li>
        <a href="#" onclick="window.location.href='AjoutControleur'">Ajout</a>
    </li>
    <li>
        <a href="#" onclick="window.location.href='InventaireControleur'">Inventaire</a>
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
        <ul class="submenu">
            <li ><a style="font-size:16px; transform: translateY(-10px);" href="#" onclick="window.location.href='pageConnexion.jsp'" >Déconnexion</a></li>
        </ul>
    </li>
    
    <li id="settings">
        <a href="#"><i class="fa-solid fa-bell fa-2xl"></i></a>
    </li>
</ul>
<h1>Inventaire</h1>
<div class="analytics_graph">
<table class="table table-striped table-hover">
  <thead>
    <tr>
      <th scope="col">Sélectionner</th>
      <th scope="col">Code article</th>
      <th scope="col">Description</th>
      <th scope="col">Quantité en stock</th>
      <th scope="col">Criticité</th>
      <th scope="col">Règle</th>
      <th scope="col">Date du dernier inventaire</th>
      <th scope="col">Entrée/Sortie</th>
      <th scope="col">Indice de confiance</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${produitListe}" var="produit">
    <tr>
      <th scope="row" style="text-align:center"><input type="checkbox"></th>
      <td><c:out value="${produit.code_article}" /></td>
      <td><c:out value="${produit.description}" /></td>
      <td><c:out value="${produit.quantite}" /></td>
      <td><c:out value="${produit.criticite.criticite}" /></td>
      <td><c:out value="${produit.regle}" /></td>
      <td>date du dernier inventaire</td>
      <td><button class="btn-entree" onclick="window.location.href='AjouterBonEntree.jsp'"><b>+</b></button><button class="btn-entree" onclick="window.location.href='AjouterBonSortie.jsp'"><b>-</b></button></td>
      <td>indice de confiance</td>
    </tr>
    </c:forEach>
  </tbody>
</table>
</div>

<input type="submit" class="btn_pln" value="Planifier inventaire" onclick="window.location.href='PlannificationInventaire.jsp'">

<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

</body>
</html>