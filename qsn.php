<!doctype html>
<html class="no-js" lang="en">
<head>
	<title>Allée du Bio - Alimentation, cosmétiques et compléments alimentaires</title>
<?php include('inc/meta.php'); ?>
</head>
<body>
	
<?php include('inc/header.php'); ?>
	
	<!-- Produit du mois -->
	<div class="row encart">
		<div class="large-7 medium-7 small-7 columns">
			<h1>Qui sommes nous</h1>
			<p>
				J'ai ouvert le magasin en avril 2009 et j'ai souhaité qu'il soit à dimension humaine, 		
				de proximité et ainsi favoriser les échanges avec mes clients.<br>		
				On y trouve une large gamme d'articles et aussi du conseil, du service et de la bonne humeur.		
				Je connais mes produits et sais comment les utiliser. J'apporte du conseil sur les huiles 		
				essentielles, les élixirs floraux (fleur de Bach), les vitamines, les plantes, ou les compléments		
				alimentaires nécessaires à la bonne santé de chacun.<br>	<br>			
				Je suis là pour expliquer ce qu'est un produit biologique et comment il arrive dans vos assiettes.		
				Je suis impliquée au quotidien dans le devenir d'une agriculture saine et mon rôle est de vous 		
				sensibiliser, de vous accompagner dans vos démarches et d'agir en faveur de la nature.<br>			
				L'écologie est la responsabilité de chacun, loin des discours politiques, c'est à chacun de nous d'oeuvrer à sa		
				manière pour une planète plus propre et une Terre plus riche.	<br>	<br>		
						
				« Ce n'est pas lorsqu'il aura fait tomber le dernier arbre, contaminé le dernier ruisseau, pêché le dernier poisson		
				que l'Homme s'apercevra que l'argent n'est pas comestible. »	<br>		
				Indien Mohawk		<br>	<br>	
						
						
				Céline Reynaert		
			</p>
		</div>
		<div class="large-5 medium-5 small-5 columns">
			<img src="img/IMG_1013.jpg" alt="" />
		</div>
	</div>
	<!-- Fin Produit du mois -->
	
		<!-- Listing produits -->
	<div class="row">
		<div class="large-4 medium-4 small-6 columns products-list fuchsia">
			<div onclick="javascript:location.href='/produit-detail.php?categorie=1';">
				<span></span>
				<img src="img/produits-frais.jpg" alt="" />
				<h2>huiles essentielles</h2>
				<p>Les huiles essentielles pures et naturelles...</p>
			</div>
		</div>
		
		<div class="large-4 medium-4 small-6 columns products-list vert">
			<div onclick="javascript:location.href='/produit-detail.php?categorie=13';">
				<span></span>
				<img src="img/pain.jpg" alt="" />
				<h2>pains</h2>
				<p>Découvrez un choix particulier de pains : céréales, maïs, tournesol...</p>
			</div>
		</div>
		<div class="large-4 medium-4 small-6 columns products-list bleu">
			<div onclick="javascript:location.href='/produit-detail.php?categorie=39';">
				<span></span>
				<img src="img/beaute.jpg" alt="" />
				<h2>cosmétique</h2>
				<p>Crème de jour, de nuit, soin du visage, soin des mains...</p>
			</div>
		</div>
		<div class="large-4 medium-4 small-6 columns products-list fuchsia">
			<div onclick="javascript:location.href='/produit-detail.php?categorie=37';">
				<span></span>
				<img src="img/complements.jpg" alt="" />
				<h2>compléments alimentaires</h2>
				<p>Découvrez un large choix de compléments pour améliorer votre quotidien...</p>
			</div>
		</div>
		<div class="large-4 medium-4 small-6 columns products-list vert">
			<div onclick="javascript:location.href='/produit-detail.php?categorie=4';">
				<span></span>
				<img src="img/tisanes.jpg" alt="" />
				<h2>tisanes</h2>
				<p>Nous avons sélectionne un très large choix de mélanges afin de satisfaire toutes les envies.</p>
			</div>
		</div>
		<div class="large-4 medium-4 small-6 columns products-list bleu">
			<div onclick="javascript:location.href='/produit-detail.php?categorie=38';">
				<span></span>
				<img src="img/epicerie.jpg" alt="" />
				<h2>épicerie</h2>
				<p>Découvrez notre épicerie avec un large choix d’huile, épices, pâtes...</p>
			</div>
		</div>
	</div>
	<!-- Fin Listing produits -->
	
<?php include('inc/footer.php'); ?>
	<script>
		$('.header ul li:nth-child(2)').addClass('active');
	</script>
	
</body>
</html>
