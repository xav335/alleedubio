$(document).foundation();

$(document).ready(function() {
	$('.fancybox').fancybox();
	
	$('.thumb a img').mouseover(function() {
		var lien = $(this).attr('src');
		$('.img-produit').attr('src', lien);
	});
});

/* Gestion de la date et de l'heure */
var text = '';
var date = new Date();
var jour_actuel = date.getDay();
var chaine_jour = Array('Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi');
var jour_semaine = chaine_jour[jour_actuel];
if ( date.getDate() <= 9 ) {
	var jour = '0'+date.getDate();
} else {
	var jour = date.getDate();
}
var mois_actuel = date.getMonth();
var chaine_mois = Array('janvier', 'février', 'mars', 'avril', 'mai', 'juin', 'juillet', 'août', 'septembre', 'octobre', 'novembre',	'décembre');
var mois = chaine_mois[mois_actuel];
if ( date.getHours() <= 9 ) {
	var heure = '0'+date.getHours();
} else {
	var heure = date.getHours();
}
if ( date.getMinutes() <= 9 ) {
	var minutes = '0'+date.getMinutes();
} else {
	var minutes = date.getMinutes();
}
text +=  jour_semaine+' '+jour+' '+mois;
text += ' - ';
text +=  heure+':'+minutes;
document.getElementById('date').innerHTML = text;