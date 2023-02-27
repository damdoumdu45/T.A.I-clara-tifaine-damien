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
	<div class="titre2">
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