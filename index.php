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
	<meta name="keywords" content="Alimentation, cosmétiques, légumes bio, fruits bio, produits alimentaires bio, boutiques bio, magasin bio, épicerie bio, produits biologiquesmontignac, propolis, solgar, atelier bio, bien être ,compléments alimentaires ,huiles essentielles ,aloe arborescens ,bio ,ladrome ,silicium ,pain bio ,commerce bio ,argent colloïdal ,fleur de bach ,quinton ,produits ayourvediques ,encens, seve de bouleau" />
	
<?php include('inc/meta.php'); ?>
</head>
<body>
	
<?php include('inc/header.php'); ?>
	
	

	<!-- Listing produits -->
	<div class="row">
		<div class="large-4 medium-4 small-6 columns products-list fuchsia">
			<div onclick="javascript:location.href='/produit-detail.php?categorie=1';">
				<span></span>
				<img src="img/produits-frais.jpg" alt="" />
				<h2>Huiles essentielles</h2>
				<p>Tous les conseils en aromathérapie...</p>
			</div>
		</div>
		
		<div class="large-4 medium-4 small-6 columns products-list vert">
			<div onclick="javascript:location.href='/produit-detail.php?categorie=13';">
				<span></span>
				<img src="img/pain.jpg" alt="" />
				<h2>Pains</h2>
				<p>Complet, demi-complet, graines et <b>Montignac</b>.</p>
			</div>
		</div>
		<div class="large-4 medium-4 small-6 columns products-list bleu">
			<div onclick="javascript:location.href='/produit-detail.php?categorie=39';">
				<span></span>
				<img src="img/beaute.jpg" alt="" />
				<h2>Cosmétique</h2>
				<p>Soins visage et corps, gammes complètes...</p>
			</div>
		</div>
		<div class="large-4 medium-4 small-6 columns products-list bleu">
			<div onclick="javascript:location.href='/produit-detail.php?categorie=37';">
				<span></span>
				<img src="img/complements.jpg" alt="" />
				<h2>Compléments alimentaires</h2>
				<p> Un large choix de compléments pour votre santé...</p>
			</div>
		</div>
		<div class="large-4 medium-4 small-6 columns products-list vert">
			<div onclick="javascript:location.href='/produit-detail.php?categorie=4';">
				<span></span>
				<img src="img/tisanes.jpg" alt="" />
				<h2>Tisanes</h2>
				<p>Plus de 70 plantes à découvrir.</p>
			</div>
		</div>
		<div class="large-4 medium-4 small-6 columns products-list fuchsia">
			<div onclick="javascript:location.href='/produit-detail.php?categorie=38';">
				<span></span>
				<img src="img/epicerie.jpg" alt="" />
				<h2>Epicerie</h2>
				<p>Un large choix de produits sains...</p>
			</div>
		</div>
	</div>
	<!-- Fin Listing produits -->
	
	<!-- Produit du mois -->
	<div class="row ">
		<div class="large-12 medium-12 small-12 columns  slider fade ">
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
						<?php echo nl2br($value['contenu'])?>
					</p>
					<?php if (!empty($value['accroche'])) {?>
						<a href="<?php echo $value['accroche']?>" class="bt-plus">en savoir +</a>
					<?php } ?>
				</div>
				<div class="large-5 medium-5 small-5 columns" style="text-align: center;">
					<a href="photos/news<?php echo $value['image1']?>" class="fancybox"><img src="photos/news/thumbs<?php echo $value['image1']?>"  alt=""  /></a>
				</div>
			</div>
			<?php } ?>
		<?php } ?>	
		</div>
		<div class="large-12 medium-12 small-12 columns fade ">
			<div class="bdc">
				<div class="large-9 medium-9 small-9 columns">
					<h3>Bon de commande</h3>
						
					Un bon de commande est à votre disposition afin de commander des articles sur le site. 
					(Toutes les informations pratiques sont détaillées sur le bon de commande)
					<br><br>
					<a href="<?php echo $pdf ?>" target="_blank">
					Télécharger le bon de commande : </a><a href="<?php echo $pdf ?>" target="_blank"><img src="img/pdf-icon.png" width="50" alt="" /></a>
				</div>
					
				<div class="large-3 medium-12 small-12 columns">
					<img src="img/livreur.png" alt="" />
				</div>
			</div>
		</div>
	</div>	
	<!-- Fin Produit du mois -->
	
<?php include('inc/footer.php'); ?>
	<script>
		$('.header ul li:first-child').addClass('active');
	</script>
	
</body>
</html>
