<?php include_once 'inc-auth-granted.php';?>
<?php include_once 'classes/utils.php';?>
<?php 
require 'classes/Catproduct.php';

if (!empty($_GET)){ //Modif 
	$action = 'modif';
	$catproduct = new Catproduct();
	$result = $catproduct->productGet($_GET['id'],null,null);
	//print_r($result[0]['categories']);
	//print_r($result);exit();
	
	if (empty($result)) {
		$message = 'Aucun enregistrements';
	} else {
		$labelTitle = 'Produit N°: '. $_GET['id'];
		$id= 			$_GET['id'];
		$label=  		$result[0]['label'];
		$prix=  		$result[0]['prix'];
		$reference=  		$result[0]['reference'];
		$accroche= 		$result[0]['accroche'];
		$description= 		$result[0]['description'];
		for ($i=1;$i<4;$i++) {
			$image[$i] = 	$result[0]['image'.$i];
			if(empty($image[$i]) || !isset($image[$i])){
				$img[$i]  = '/img/favicon.png';
				$imgval[$i]  = '';
			} else {
				$img[$i]  = $image[$i];
				$imgval[$i]  = $image[$i];
			}
		}	
	}
}
?>
<!doctype html>
<html class="no-js" lang="fr">
<head>
	<?php include_once 'inc-meta.php';?>
</head>
<body>	
	<?php require_once 'inc-menu.php';?>

	<div class="container">

		<div class="row">
			<h3><?php echo $labelTitle ?></h3>
			<div class="col-xs-12 col-sm-12 col-md-12">
				<form name="formulaire" class="form-horizontal" method="POST"  action="formprocess.php">
					<input type="hidden" name="reference" value="product">
					<input type="hidden" name="action" value="<?php echo $action ?>">
					<input type="hidden" name="id" id="id" value="<?php echo $id ?>">
					<input type="hidden"  name="idImage"  id="idImage" value="">
					<div class="form-group" >
						<label class="col-sm-2" for="titre">Nom produit :</label>
					    <input type="text" class="col-sm-8" name="label" required  value="<?php echo $label ?>">
					</div>
					<div class="form-group" >
						<label class="col-sm-2" for="titre">Réf. :</label>
					    <input type="text" class="col-sm-4" name="ref" required  value="<?php echo $reference ?>">
					</div>
					<div class="form-group" >
						<label class="col-sm-2" for="titre">Prix :</label>
					    <input type="number" step="0.01" class="col-sm-2" name="prix" required  value="<?php echo $prix ?>">
					</div>
					<div class="form-group">
						<label for="accroche">Accroche :</label><br>
		           		<textarea class="editme" name="accroche" id="accroche" rows="3" ><?php echo $accroche ?></textarea>
		            </div>
					<div class="form-group">
						<label for="accroche">Description :</label><br>
		           		<textarea class="editme" name="description" id="description" rows="6" ><?php echo $description ?></textarea>
		            </div>
		            <div class="form-group"><br>
						<label  for="titre">Choisissez les photos du produit: </label>
					</div>	
				
						<?php for ($i=1;$i<4;$i++) {?>
							<div class="col-md-4">
						<input type="text"  name="url<?php echo $i ?>"  id="url<?php echo $i ?>" value="<?php echo $imgval[$i]?>"><br>
            			<a href="javascript:openCustomRoxy('<?php echo $i ?>')"><img  src="<?php echo $img[$i]?>" id="customRoxyImage<?php echo $i ?>" style="max-width:200px;"></a>
						<img src="img/del.png" width="20" alt="Supprimer" onclick="clearImage(<?php echo $i ?>)"/>
						<br><br>
						</div>	
						<?php }?>
					
		            <div id="roxyCustomPanel" style="display: none;">
  							<iframe src="/admin/fileman2/index.html?integration=custom" style="width:100%;height:100%" frameborder="0"></iframe>
					</div>
					
					<script type="text/javascript">
						function openCustomRoxy(idImage){
							$('#idImage').val(idImage);
						 	$('#roxyCustomPanel').dialog({modal:true, width:875,height:600});
						}
						function closeCustomRoxy(){
						  	$('#roxyCustomPanel').dialog('close');
						}
	
						function clearImage(idImage){
							$('#customRoxyImage'+idImage).attr('src', '/img/favicon.png');
							$('#url'+idImage).val('');
						}
						
					</script>
					<div class="form-group">
		            	<button class="btn btn-success col-sm-12" type="submit" class="btn btn-default"> Valider </button>
		            </div>
					<script type="text/javascript">
						tinymce.init({
						selector: "textarea.editme",
						// ===========================================
						// INCLUDE THE PLUGIN
						// ===========================================
						plugins: [
						"advlist autolink lists link image charmap print preview anchor",
						"searchreplace visualblocks code fullscreen textcolor",
						"insertdatetime media table contextmenu paste jbimages"
						],
											
						// ===========================================
						// PUT PLUGIN'S BUTTON on the toolbar
						// ===========================================
						toolbar: "insertfile undo redo | styleselect | forecolor backcolor | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image jbimages",
						// ===========================================
						// SET RELATIVE_URLS to FALSE (This is required for images to display properly)
						// ===========================================
						// AJOUTE LES URL EN ENTIER decommenter les 2 lignes suivantes
						//document_base_url: "http://dev.bsport.fr",
						//remove_script_host : false,
						relative_urls: false,
						file_browser_callback: RoxyFileBrowser
						
						});
	
	
						function RoxyFileBrowser(field_name, url, type, win) {
						  var roxyFileman = '/admin/fileman/index.html';
						  if (roxyFileman.indexOf("?") < 0) {     
						    roxyFileman += "?type=" + type;   
						  }
						  else {
						    roxyFileman += "&type=" + type;
						  }
						  roxyFileman += '&input=' + field_name + '&value=' + document.getElementById(field_name).value;
						  if(tinyMCE.activeEditor.settings.language){
						    roxyFileman += '&langCode=' + tinyMCE.activeEditor.settings.language;
						  }
						  tinyMCE.activeEditor.windowManager.open({
						     file: roxyFileman,
						     title: 'Gestionnaire de fichiers',
						     width: 850, 
						     height: 650,
						     resizable: "yes",
						     plugins: "media",
						     inline: "yes",
						     close_previous: "no"  
						  }, {     window: win,     input: field_name    });
						  return false; 
						}

						
						$(document).ready(
						  /* This is the function that will get executed after the DOM is fully loaded */
						  function () {
						    $( "#datepicker" ).datepicker({
						    	altField: "#datepicker",
						    	closeText: 'Fermer',
						    	prevText: 'Précédent',
						    	nextText: 'Suivant',
						    	currentText: 'Aujourd\'hui',
						    	monthNames: ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre'],
						    	monthNamesShort: ['Janv.', 'Févr.', 'Mars', 'Avril', 'Mai', 'Juin', 'Juil.', 'Août', 'Sept.', 'Oct.', 'Nov.', 'Déc.'],
						    	dayNames: ['Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi'],
						    	dayNamesShort: ['Dim.', 'Lun.', 'Mar.', 'Mer.', 'Jeu.', 'Ven.', 'Sam.'],
						    	dayNamesMin: ['D', 'L', 'M', 'M', 'J', 'V', 'S'],
						    	weekHeader: 'Sem.',
						    	dateFormat: 'dd/mm/yy'
						    });
						  }
	
						);
			
					</script>
		        </form>
			</div>
		</div>
	</div>
</body>
</html>


