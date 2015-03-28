<?php 
require 'admin/classes/utils.php';
require 'admin/classes/Catproduct.php';
require 'admin/classes/Planning.php';
session_start();

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

$catproduct = new Catproduct();
if (!empty($_GET)){
	$result = $catproduct->getProductsByCategorie($_GET['categorie']);
	//print_r($result);
} 
?>
<!doctype html>
<html class="no-js" lang="en">
<head>
	<title>Allée du Bio : <?php echo $result[0]['catlabel']?></title>
	<meta name="description" content="consultez nos produits: <?php echo $result[0]['catlabel']?>" />
	<meta name="keywords" content="Alimentation, cosmétiques, légumes bio, fruits bio, épicerie, légumes bio, complément alimentaire, elixir floral, huile essencielle, huile végétale, huile florale, pain, pains, plante médicinale, propolis" />
<?php include('inc/meta.php'); ?>
</head>
<body>
	
<?php include('inc/header.php'); ?>
	<div class="row actualites">
		<?php if (!empty($result)) { ?>
			<h1>Rayon : <?php echo $result[0]['catlabel']?></h1>
			<a href="produit.php" class="suite"><- Retour aux Catégories de produits</a>
			<?php } else { ?>
				<h2>Aucun produit dans ce rayon pour le moment !</h2>
			<?php } ?>	
			
		<!-- Produit -->
		<?php 
			if (!empty($result)) {
				$i=0;
				foreach ($result as $value) { 
					
				$i++;
				?>
				<div class="row produit">
					<div class="large-4 medium-4 small-4 columns">
						<a href="/photos/products<?php echo $value['image1']?>"  class="fancybox lnk-produit<?php echo $value['id']?>"><img src="/photos/products<?php echo $value['image1']?>" alt=""  class="img-produit<?php echo $value['id']?>" /></a> 
						<div class="row thumb">
							<div class="large-4 medium-4 small-4 columns">
							<?php if (!empty($value['image1'])) { ?>
								<a href="/photos/products<?php echo $value['image1']?>" id="thumblink1<?php echo $value['id']?>" class="fancybox" data-fancybox-group="produit<?php echo $value['id']?>"><img src="/photos/products/thumbs<?php echo $value['image1']?>" id="thumbimg1<?php echo $value['id']?>" alt="" /></a>
								<script>
									$(document).ready(function() {
										$('#thumblink1<?php echo $value['id']?>').mouseover(function() {
											var lien = $('#thumblink1<?php echo $value['id']?>').attr('href');
											$('.img-produit<?php echo $value['id']?>').attr('src', lien);
											$('.lnk-produit<?php echo $value['id']?>').attr('href', lien);
										});
									});	
								</script>
							<?php } ?>	
							</div>
							<div class="large-4 medium-4 small-4 columns">
							<?php if (!empty($value['image2'])) { ?>
								<a href="/photos/products<?php echo $value['image2']?>" id="thumblink2<?php echo $value['id']?>" class="fancybox" data-fancybox-group="produit<?php echo $value['id']?>"><img src="/photos/products/thumbs<?php echo $value['image2']?>" id="thumbimg2<?php echo $value['id']?>" alt="" /></a>
								<script>
									$(document).ready(function() {
										$('#thumblink2<?php echo $value['id']?>').mouseover(function() {
											var lien = $('#thumblink2<?php echo $value['id']?>').attr('href');
											$('.img-produit<?php echo $value['id']?>').attr('src', lien);
											$('.lnk-produit<?php echo $value['id']?>').attr('href', lien);
										});
									});	
								</script>
							<?php } ?>	
							</div>
							<div class="large-4 medium-4 small-4 columns">
							<?php if (!empty($value['image3'])) { ?>	
								<a href="/photos/products<?php echo $value['image3']?>" id="thumblink3<?php echo $value['id']?>" class="fancybox" data-fancybox-group="produit<?php echo $value['id']?>"><img src="/photos/products/thumbs<?php echo $value['image3']?>" id="thumbimg3<?php echo $value['id']?>" alt="" /></a>
								<script>
									$(document).ready(function() {
										$('#thumblink3<?php echo $value['id']?>').mouseover(function() {
											var lien = $('#thumblink3<?php echo $value['id']?>').attr('href');
											$('.img-produit<?php echo $value['id']?>').attr('src', lien);
											$('.lnk-produit<?php echo $value['id']?>').attr('href', lien);
										});
									});	
								</script>
							<?php } ?>
							</div>
						</div>
					</div>
					
					<div class="large-8 medium-8 small-8 columns">
						<h1><?php echo $value['label']?></h1>
						<h3>Réf. : <?php echo $value['reference']?></h3>
						<p>
							<?php echo nl2br($value['description'])?>
						</p>
						<a href="<?php echo $pdf ?>" target="_blank" class="bt-plus"><strong><?php echo $value['prix']?></strong>&nbsp;<?php echo $value['libprix']?></a>
						<div class="plus-produit">
							<h3><?php echo $value['titreaccroche']?></h3>
							<div class="row">
								<div class="large-12 medium-12 small-12 columns plus-produit">
									<?php echo nl2br($value['accroche'])?>
								</div>
							</div>
						</div>
					</div>
				</div>
			<?php } ?>
		<?php } ?>		
		<br>
		<a href="produit.php" class="suite"><- Retour aux Catégories de produits</a>
	</div>
		
		<!-- Fin Produit -->
	
	
<?php include('inc/footer.php'); ?>
	<script>
		$('.header ul li:nth-child(3)').addClass('active');
	</script>
</body>
</html>
