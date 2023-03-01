<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%--<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" prefix="c" --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calendrier</title>
<link rel="stylesheet" type="text/css" href="styleCalendrier.css" />
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
        <a href="#"><i class="fa-solid fa-bell fa-2xl"></i></a>
    </li>
</ul>


	<section id="cld">
                <section id="enteteCld">
                    <h1 id="cldT">JANVIER</h1>
                    <section id="avantEtApres">
                    <button id="avant" class="cldBtn"><i class="fa-solid fa-arrow-left"></i></button>
                    <button id="apres" class="cldBtn"style="margin-left: 20%"><i class="fa-solid fa-arrow-right"></i></button></section>
                </section>
            

            <section id="cldBoite">
                <div id="jours">
                    <div class="jour">lun</div>
                    <div class="jour">mar</div>
                    <div class="jour">mer</div>
                    <div class="jour">jeu</div>                 
                    <div class="jour">ven</div>
                    <div class="jour">sam</div>
                    <div class="jour">dim</div>
                </div>

                <div id="semaine1" class="semaine">
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                </div>
                <div id="semaine2" class="semaine">
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                </div>
                <div id="semaine3" class="semaine">
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                </div>
                <div id="semaine4" class="semaine">
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                </div>
                <div id="semaine5" class="semaine">
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                </div>
                <div id="semaine6" class="semaine">
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                    <div class="case"></div>
                </div>

            </section>
        </section>
        <button class="button_square" onclick="window.location.href='Rapport.jsp'"> Generer un rapport</button>
<script src="./scriptCalendrier.js"></script>
</body>
</html>