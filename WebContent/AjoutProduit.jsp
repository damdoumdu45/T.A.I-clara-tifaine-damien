<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajouter un produit</title>
<link rel="stylesheet" type="text/css" href="styleAjoutProduit.css" />
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


<div class="container">
	<form action="sauvegarderDonnees" method="POST">
		<div class="cdd">
    	<label for="code_article">Code article :</label>
    	<input type="text" id="code_article" name="code_article"><br>
    	</div>
  
  		<div class="dpt">
    	<label for="description">Description:</label>
    	<input type="text" id="description" name="description"><br>
    	</div>
  
  		<div class="dtcrea">
    	<label for="date_creation">Date de création :</label>
    	<input type="text" id="date_creation" name="date_creation"><br>
    	</div>

		<div class="regle">
    	<label for="regle">Règle :</label>
	    <input type="text" id="regle" name="regle"><br>
	    </div>

		<div class="fourn">
    	<label for="fournisseur">Fournisseur :</label>
    	<input type="fournisseur" id="fournisseur" name="fournisseur"><br>
    	</div>
  
  		<style>
     		button {
        		display: inline-block;
    	    	background-color: #555B61;
    	    	border-radius: 10px;
     	  		border: 4px double #cccccc;
     	    	color: #eeeeee;
      	  		text-align: center;
       			font-size: 10px;
       	 		padding: 10px;
      			width: 200px;
        		transition: all 0.5s;
        		cursor: pointer;
        		margin: 5px;
        		font-family: Montserrat, sans-serif;
        		
      		}
      		button span {
	       		cursor: pointer;
	       		display: inline-block;
	       		position: relative;
	       		transition: 0.5s;
	     	}
	     	button span:after {
	       		content: "\00bb";
	       		position: absolute;
	       		opacity: 0;
	       		top: 0;
	       		right: -20px;
	       		transition: 0.5s;
	     	}
	    	button:hover {
	       		background-color: #7F7F7F;
	     	}
	     	button:hover span {
	       		padding-right: 25px;
	     	}
	     	button:hover span:after {
	       		opacity: 1;
	       		right: 0;
	     	}
    </style>
    
    <button href="#" onclick="window.location.href='Inventaire.jsp'"><span>Enregistrer et fermer</span></button>
	</form>
</div>



</body>
</html>