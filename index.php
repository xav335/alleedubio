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
		<div class="slider autoplay">
			<div>
				<div class="large-7 medium-7 small-7 columns">
		
					<h1>L'actu du mois</h1>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin feugiat ligula consectetur porttitor imperdiet. Sed finibus nibh porta tortor finibus tincidunt. Donec iaculis accumsan odio eu aliquet. Integer vel libero eu urna tristique fringilla. Donec dictum mauris vel ante rhoncus, vitae malesuada metus aliquet.
					</p>
					<a href="produit.php" class="bt-plus">en savoir +</a>
				</div>
				<div class="large-5 medium-5 small-5 columns">
					<img src="img/produits-frais.jpg" alt="" />
				</div>
			</div>
			<div>
				<div class="large-7 medium-7 small-7 columns">
		
					<h1>L'actu du mois</h1>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin feugiat ligula consectetur porttitor imperdiet. Sed finibus nibh porta tortor finibus tincidunt. Donec iaculis accumsan odio eu aliquet. Integer vel libero eu urna tristique fringilla. Donec dictum mauris vel ante rhoncus, vitae malesuada metus aliquet.
					</p>
					<a href="produit.php" class="bt-plus">en savoir +</a>
				</div>
				<div class="large-5 medium-5 small-5 columns">
					<img src="img/produits-frais.jpg" alt="" />
				</div>
			</div>
			<div>
				<div class="large-7 medium-7 small-7 columns">
		
					<h1>Le produit du mois</h1>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin feugiat ligula consectetur porttitor imperdiet. Sed finibus nibh porta tortor finibus tincidunt. Donec iaculis accumsan odio eu aliquet. Integer vel libero eu urna tristique fringilla. Donec dictum mauris vel ante rhoncus, vitae malesuada metus aliquet.
					</p>
					<a href="produit.php" class="bt-plus">en savoir +</a>
				</div>
				<div class="large-5 medium-5 small-5 columns">
					<img src="img/produit-du-mois.jpg" alt="" />
				</div>
			</div>
		</div>
	</div>
	<!-- Fin Produit du mois -->

	<!-- Listing produits -->
	<div class="row">
		<div class="large-4 medium-4 small-6 columns products-list fuchsia">
			<div onclick="javascript:location.href='#';">
				<span></span>
				<img src="img/pain.jpg" alt="" />
				<h2>nos pains</h2>
				<p>Découvrez un choix particulier de pains : céréales, maïs, tournesol...</p>
			</div>
		</div>
		<div class="large-4 medium-4 small-6 columns products-list vert">
			<div onclick="javascript:location.href='#';">
				<span></span>
				<img src="img/produits-frais.jpg" alt="" />
				<h2>produits frais</h2>
				<p>Légumes ou fruits de saison, produits laitiers...</p>
			</div>
		</div>
		<div class="large-4 medium-4 small-6 columns products-list bleu">
			<div onclick="javascript:location.href='#';">
				<span></span>
				<img src="img/epicerie.jpg" alt="" />
				<h2>épicerie</h2>
				<p>Découvrez notre épicerie avec un large choix d’huile, épices, pâtes...</p>
			</div>
		</div>
		<div class="large-4 medium-4 small-6 columns products-list bleu">
			<div onclick="javascript:location.href='#';">
				<span></span>
				<img src="img/beaute.jpg" alt="" />
				<h2>beauté</h2>
				<p>Crème de jour, de nuit, soin du visage, soin des mains...</p>
			</div>
		</div>
		<div class="large-4 medium-4 small-6 columns products-list fuchsia">
			<div onclick="javascript:location.href='#';">
				<span></span>
				<img src="img/tisanes.jpg" alt="" />
				<h2>tisanes, thé ou café</h2>
				<p>Nous avons sélectionne un très large choix de mélanges afin de satisfaire toutes les envies.</p>
			</div>
		</div>
		<div class="large-4 medium-4 small-6 columns products-list vert">
			<div onclick="javascript:location.href='#';">
				<span></span>
				<img src="img/complements.jpg" alt="" />
				<h2>compléments alimentaires</h2>
				<p>Découvrez un large choix de compléments pour améliorer votre quotidien...</p>
			</div>
		</div>
	</div>
	<!-- Fin Listing produits -->
	
<?php include('inc/footer.php'); ?>
	<script>
		$('.header ul li:first-child').addClass('active');
	</script>
	
</body>
</html>
