/*var currentDate = new Date();
var currentMonth = currentDate.getMonth();
var currentYear = currentDate.getFullYear();*/

public class Calendrier {

	function fillCalendar(month, year) {
		  var firstDay = new Date(year, month, 1).getDay();
		  var lastDate = new Date(year, month + 1, 0).getDate();
		  var tableBody = document.querySelector('.calendar tbody');
		  tableBody.innerHTML = '';
		  var date = 1;
		  for (var i = 0; i < 6; i++) {
		    var row = document.createElement('tr');
		    for (var j = 0; j < 7; j++) {
		      var cell = document.createElement('td');
		      if (i === 0 && j < firstDay) {
		        var textNode = document.createTextNode('');
		        cell.appendChild(textNode);
		      } else if (date > lastDate) {
		        break;
		      } else {
		        var textNode = document.createTextNode(date);
		        cell.appendChild(textNode);
		        date++;
		      }
		      row.appendChild(cell);
		    }
		    tableBody.appendChild(row);
		  }
		  var monthYearText = document.querySelector('.month-year');
		  var months = ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre'];
		  monthYearText.textContent = months[month] + ' ' + year;
		}

		fillCalendar(currentMonth, currentYear);
}
}
