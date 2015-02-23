<?php 
require 'admin/classes/News.php';
require 'admin/classes/utils.php';
require 'admin/classes/Planning.php';
session_start();
$news = new News();
$result = $news->newsValidGet();
//print_r($result);
if (empty($result)) {
	$titre=  		'';
	$date_news= 	'';
	$accroche= 		'Pas de news pour le moment.';
	$contenu= 		'';
} else {
	$titre=  		$result[0]['titre'];
	$date_news= 	traitement_datetime_affiche($result[0]['date_news']);
	$accroche= 		$result[0]['accroche'];
	$contenu= 		$result[0]['contenu'];
}


$planning = new Planning();
$result2 = $planning->planningGet();
//print_r($result);
$planning = null;

$titre= null;
$url= null;
$pdf= null;
if (!empty($result2)) {
	$titre= $result2[0]['titre'];
	$url= $result2[0]['url'];
	$pdf= '/photos/bdc'. $result2[0]['pdf'];
}
?>
<!doctype html>
<html class="no-js" lang="en">
<head>
	<title>Allée du Bio:Alimentation, cosmétiques et compléments alimentaires à Saint Sulpice et Cameyrac près de Bordeaux (33)</title>
	<meta name="description" content="Allée du Bio, votre boutique certifiée AB Agriculture Biologique : alimentation, cosmétiques et compléments alimentaires à Saint Sulpice et Cameyrac près de Bordeaux (33)" />
	<meta name="keywords" content="Alimentation, cosmétiques, légumes bio, fruits bio, produits alimentaires bio, boutiques bio, magasin bio, épicerie bio, produits biologiques" />
	
<?php include('inc/meta.php'); ?>
</head>
<body>
	
<?php include('inc/header.php'); ?>
	
	<!-- Produit du mois -->
	<div class="row ">
		<div class="large-9 medium-12 small-12 columns  slider fade ">
		<?php 
		if (!empty($result)) {
			$i=0;
			foreach ($result as $value) { 
			$i++;
			?>
			<div class="encart">
				<div class="large-7 medium-7 small-7 columns ">
					<h2><?php echo $value['titre']?></h2><h5><?php echo traitement_datetime_affiche($value['date_news'])?></h5>
					<p>
						<?php echo $value['contenu']?>
					</p>
					<?php if (!empty($value['accroche'])) {?>
						<a href="<?php echo $value['accroche']?>" class="bt-plus">en savoir +</a>
					<?php } ?>
				</div>
				<div class="large-5 medium-5 small-5 columns">
					<a href="photos/news<?php echo $value['image1']?>" class="fancybox"><img src="photos/news/thumbs<?php echo $value['image1']?>"  alt="" style="max-width: 280px; padding: 20px 20px 20px 20px; " /></a>
				</div>
			</div>
			<?php } ?>
		<?php } ?>	
		</div>
		<div class="large-3 medium-12 small-12 columns bdc" >
			<h4>Bon de commande</h4>
			Un bon de commande est à votre disposition afin de commander des articles sur le site. (Toutes les informations pratiques sont détaillées sur le bon de commande)
			<br><br>
			<div class="row ">
				<div class="large-9 medium-9 small-9 columns">
				<a href="<?php echo $pdf ?>" target="_blank">Télécharger le bon de commande : </a>
				</div>
				<div style="padding: 10px 10px 10px 10px ;" >
					<a href="<?php echo $pdf ?>" target="_blank"><img src="img/pdf-icon.png" width="50" alt="" /></a><br>
					<p>&nbsp;&nbsp;&nbsp;<strong>Livraison à domicile</strong></p>
				</div>	
			</div>	
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
		$('.header ul li:first-child').addClass('active');
	</script>
	
</body>
</html>
