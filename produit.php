<?php 
require 'admin/classes/utils.php';
require 'admin/classes/Catproduct.php';
require 'admin/classes/Planning.php';
session_start();

$catproduct = new Catproduct();
$catproduct->catproduitViewIterative(null);
$result = $catproduct->tabView;
$catproduct = null;


$planning = new Planning();
$result2 = $planning->planningGet();
//print_r($result);
$planning = null;

$titre= null;
$url= null;
$pdf= null;
if (!empty($result)) {
	$titre= $result2[0]['titre'];
	$url= $result2[0]['url'];
	$pdf= '/photos/bdc'. $result2[0]['pdf'];
}
	
?>
<!doctype html>
<html class="no-js" lang="en">
<head>
	<title>Allée du Bio - Actualités</title>
<?php include('inc/meta.php'); ?>
</head>
<body>
	
<?php include('inc/header.php'); ?>
	
	<!-- Actualités -->
	<div class="row actualites">
		<h1>Nos Produits</h1>
		<div class="row" style="border-bottom:1px solid #61a141; margin-bottom: 20px;">
				
				<div class="large-9 medium-9 small-9 columns" >
					<h3>Téléchargez notre bon de commande</h2>
					<p>
						Vous avez un bon de commande à votre disposition afin de commancer en ligne.
						Il suffit de l'imprimer et de renseigner la réference et la quantité des produits que vous souhaitez commander, joindre un chéque et hop c'est fait !
						Vous trouverez les conditions de vente et toutes les information pour le paiement et
						 la livraison sur le bon de commande 
						 à télécharger ici  :  <a href="<?php echo $pdf ?>" target="_blank"><img src="img/pdf-icon.png" width="50" alt="" /></a>  <br>
						<strong>Livraison à domicile possible</strong>, contacter nous par téléphone au : 05 56 30 55 08
					</p>
					
				</div>
				<div class="large-3 medium-3 small-3 columns">
					<img src="/img/bdc.jpg"  alt="" style="max-width: 220px; padding: 20px 20px 20px 20px; " />
				</div>
			</div>
		<?php 
			if (!empty($result)) {
				$i=0;
				foreach ($result as $value) { 
					$decalage = "";
					for ($i=0; $i<($value['level'] * 10); $i++) {
						$decalage .= "&nbsp;";
					}
				$i++;
				?>
				<div class="row">
					<div class="large-4 medium-4 small-4 columns">
						<?php if (!empty($value['image'])) { ?>
						<a href="/photos/categories/<?php echo $value['image']?>" class="fancybox" ><img src="photos/categories/thumbs<?php echo $value['image']?>"  alt="" style="max-width: 320px; padding: 20px 20px 20px 20px; " /></a>
						<?php } ?>	
					</div>
					<div class="large-8 medium-8 small-8 columns" >
						<h2><?php echo $value['label']?></h2>
						<p>
							<?php echo $value['description']?>
						</p>
						<a href="produit-detail.php?categorie=<?php echo $value['id']?>" class="bt-plus">Voir tous les articles de ce rayon</a>
					</div>
					
				</div>
			<?php } ?>
		<?php } ?>	
		
	</div>
	<!-- Fin Actualités -->
	
<?php include('inc/footer.php'); ?>
	<script>
		$('.header ul li:nth-child(3)').addClass('active');
	</script>
	
</body>
</html>
