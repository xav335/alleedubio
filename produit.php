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
	<title>Allée du Bio : Tous nos produits bio</title>
	<meta name="description" content="consultez nos produits alimentaire, cosmétiques" />
	<meta name="keywords" content="Alimentation, cosmétiques, légumes bio, fruits bio, épicerie, légumes bio, complément alimentaire, elixir floral, huile essencielle, huile végétale, huile florale, pain, pains, plante médicinale, propolis" />
<?php include('inc/meta.php'); ?>
</head>
<body>
	
<?php include('inc/header.php'); ?>
	
	<!-- Actualités -->
	<div class="row actualites">
		<h1>Nos Produits</h1>
		<div class="row bdc" style="border-bottom:1px solid #61a141; margin-bottom: 20px;">
			<div class="large-9 medium-9 small-12 columns" >
				<h3>Téléchargez notre bon de commande</h2>
				<p>
					Vous avez un bon de commande à votre disposition afin de commancer en ligne.
					<br>
					 Télécharger le bon de commande  <a href="<?php echo $pdf ?>" target="_blank">ici  :  <img src="img/pdf-icon.png" width="50" alt="" /></a>  <br>
				</p>
				
			</div>
			<div class="large-3 medium-3 small-12 columns">
				<a href="<?php echo $pdf ?>" target="_blank"><img src="/img/bloc.png" width="150" alt=""  /></a>
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
				<div class="row" style="border-bottom: 1px solid #61a141;padding-right: 35px;padding-bottom: 20px;">
					<br>
					<div class="large-4 medium-6 small-12 columns" >
						<?php if (!empty($value['image'])) { ?>
						<a href="produit-detail.php?categorie=<?php echo $value['id']?>"  ><img src="photos/categories/thumbs<?php echo $value['image']?>"  alt="" style="max-width: 320px; padding: 20px 20px 20px 20px; " /></a>
						<?php } ?>	
					</div>
					<div class="large-8 medium-6 small-12 columns" style="padding-left: 30px;">
						<h2><a href="produit-detail.php?categorie=<?php echo $value['id']?>" ><?php echo $value['label']?></a></h2>
						<p style="text-align: justify;">
							<?php echo nl2br($value['description'])?>
						</p>
						
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
