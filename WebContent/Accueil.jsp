<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%-- <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<link rel="stylesheet" type="text/css" href="style.css" />

<body>


<ul class="nav">
	<li>
        <a href="#">Accueil</a>
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

<script src="prefixfree-1.0.7.js" type="text/javascript"></script>

</body>
</html>