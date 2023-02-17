<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Accueil d'hoffgevouet</title>
</head>
<body>
	<button onclick="window.location.href = 'https://fr.w3docs.com/';">Accueil</button>
	<select>
  <option value="option1">Option 1</option>
  <option value="option2">Option 2</option>
  <option value="option3">Option 333</option>
</select>

<ul class="nav">
    <li id="settings">
        <a href="#">Paramètres</a>
    </li>
    <li>
        <a href="#">Application</a>
    </li>
    <li>
        <a href="#">Board</a>
    </li>
    <li id="search">
        <form action="" method="get">
            <input type="text" name="search_text" id="search_text" placeholder="Search"/>
            <input type="button" name="search_button" id="search_button"></a>
        </form>
    </li>
    <li id="options">
        <a href="#">Options</a>
        <ul class="subnav">
            <li><a href="#">Settings</a></li>
            <li><a href="#">Application</a></li>
            <li><a href="#">Board</a></li>
            <li><a href="#">Options</a></li>
        </ul>
    </li>
</ul>

<script src="prefixfree-1.0.7.js" type="text/javascript"></script>
</body>
</html>