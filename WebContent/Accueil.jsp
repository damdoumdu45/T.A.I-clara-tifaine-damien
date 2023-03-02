<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%-- <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<link rel="stylesheet" type="text/css" href="style.css" />
<script src="https://kit.fontawesome.com/449d8f2d0f.js" crossorigin="anonymous"></script>

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
    
    
    
    
    <!-- <li id="search">
        <form action="" method="get">
            <input type="text" name="search_text" id="search_text" placeholder="Rechercher un article"/>
             <input type="button" name="search_button" id="search_button">
            <button id="search_button"><i class="fa-solid fa-magnifying-glass fa-2xl"></i></button>
        </form>
    </li> -->
    
    
    
    
    
    <li id="settings">
        <a href="#"><i class="fa-sharp fa-solid fa-gears fa-2xl"></i></a>
    </li>
    <li id="settings">
        <a href="#"><i class="fa-solid fa-bell fa-2xl"></i></a>
    </li>
</ul>

<script src="prefixfree-1.0.7.js" type="text/javascript"></script>


<div class="analytics">
	<div class="card engage-card">
		<div class="titre1">
			Profit 
		</div>
		<div class="card-body">
			<div id="chart"></div>
		</div>
	</div>
	<div class="card emails-card">
	<div class="titre1">
			Pourcentage de place disponible dans le stock
		</div>
	<div class="card emails-card">
			<div id="emailChart"></div>
		</div>
		<div class = "logo">
				<p style="text-align:center"><img src="logo.png" width="225px"></p>
			</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<script>
let options = {
		chart: {
			type: 'line'
		},
		stroke: {
			curve: 'smooth',
			width: 8,
			colors: ["#6E00FF"]
		},
		series: [{
			name: 'ventes',
			data: [5,3,10,8,29,19,22,13,20,15,19,24]
		}],
		xaxis: {
			categories: ["Janvier","Fevrier","Mars","Avril","Mai","Juin","Juillet","Aout","Septembre","Octobre","Novembre","Decembre"]
		}
}
var chart = new ApexCharts(document.querySelector("#chart"), options);
chart.render();

let optionsRadial = {
        series: [74],
        chart: {
        height: 280,
        type: 'radialBar',
      },
      plotOptions: {
        radialBar: {
          hollow: {
            size: '50%',
          },
      	dataLabels:{
      		name : {
      			show: false,
      			},
          value: {
              formatter: function(val) {
                return parseInt(val);
              },
              color: '#111',
              fontSize: '36px',
              show: true,
            }
      		}
        },
      },
      stroke: {
      	lineCap: "round",
      },
      	fill:{
      	colors: ["#6E00FF"],
      	}
      };

      let chartRadial = new ApexCharts(document.querySelector("#emailChart"), optionsRadial);
      chartRadial.render();
      
</script>
</body>
</html>