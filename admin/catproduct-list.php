<?php include_once 'inc-auth-granted.php';?>
<?php include_once 'classes/utils.php';?>
<?php 
require 'classes/Catproduct.php';

	$catproduct = new Catproduct();
	$catproduct->catproduitViewIterative(null);
	$result = $catproduct->tabView;
	$catproduct = null;
	
	//print_r($result);
	//exit();
	if (empty($result)) {
		$message = 'Aucun enregistrements';
	} else {
		$message = '';
	}
	$parent =null;
	$label = null;
?>
<!doctype html>
<html class="no-js" lang="en">
<head>
	<?php include_once 'inc-meta.php';?>
</head>
<body>	
	<?php require_once 'inc-menu.php';?>

	<div class="container">

		<div class="row">

			<div class="col-md-8">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">Choisissez la catégorie parent puis indiquez le nom de la catégorie fille</h3>
						</div>
						<div class="panel-body">
							<div class="col-md-8">	
								<label class="col-sm-6" for="titre">Catégorie Parent :</label>
								<select name="num_parent" id="num_parent">
								<option value="0" selected>-- racine --</option>
								<?
								foreach ($result as $value) { 
									$decalage = "";
									for ($i=0; $i<($value['level'] * 5); $i++) {
										$decalage .= "&nbsp;";
									}
									?>
									<option value="<?php echo $value['id'] ?>" <? if ( $parent ==  $value['id'] ) { ?> selected <? } ?>>
										<?=$decalage?><?php echo $value['label'] ?>
									</option>
									<?
								}
								?>
								</select>	
							</div>	
							<div class="col-md-8">
								<label class="col-sm-6" for="titre">Nom catégorie : </label>
		            			<input type="text" class="col-sm-6" name="titre" required id="titre" value="<?php echo $label ?>">
		            		</div>	
							<p>
								<a class="btn btn-success pull-right" href="/admin/goldbook-list.php">Créer la catégorie</a>
							</p>
						</div>
					</div>
				</div>
				
				<table class="table table-hover table-bordered table-condensed table-striped" >
					<thead>
						<tr>
							<th class="col-md-4" style="">
								Categorie
							</th>
							<th class="col-md-1" style="">
								Image
							</th>
							<th class="col-md-1" colspan="2" style="">
								Actions
							</th>
						</tr>
					</thead>
					<tbody>
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
							<tr class="<?php if ($value['level']==0) echo 'info';  if ($value['level']==1) echo 'success';?>">
								<td><?php echo $decalage.$value['label']?></td>
								<td><?php echo $value['image']?></td>
								<td><a href="catproduct-list.php?id=<?php echo $value['id'] ?>"><img src="img/modif.png" width="30" alt="Modifier" ></a></td>
								<td>
									<div style="display: none;" class="supp<?php echo $value['id_news']?> alert alert-warning alert-dismissible fade in" role="alert">
								      <button type="button" class="close"  aria-label="Close" onclick="$('.supp<?php echo $value['id_news']?>').css('display', 'none');"><span aria-hidden="true">×</span></button>
								      <strong>Voulez vous vraiment supprimer ?</strong>
								      <button type="button" class="btn btn-danger" onclick="location.href='formprocess.php?reference=news&action=delete&id=<?php echo $value['id_news'] ?>'">Oui !</button>
								 	</div>
								<img src="img/del.png" width="20" alt="Supprimer" onclick="$('.supp<?php echo $value['id_news']?>').css('display', 'block');"> </td>
							</tr>
							<?php } ?>
						<?php } ?>	
					</tbody>
				</table>

				<h3><?php echo $message?></h3>
			</div>
		</div>
	</div>
</body>
</html>


