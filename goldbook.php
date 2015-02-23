<?php 
require 'admin/classes/Goldbook.php';
require 'admin/classes/utils.php';
session_start();
$goldbook = new Goldbook();
$result = $goldbook->goldbookValidGet();
$goldbook = null;
//print_r($result);
?>
<!doctype html>
<html class="no-js" lang="en">
<head>
	<title>Allée du Bio: Livre d'or</title>
	<meta name="description" content="Consulter les avis, les remarqeus et les commentaires des clients et des internautes" />
	<meta name="keywords" content="livre d'or, avis, remarques, informations, information" />
<?php include('inc/meta.php'); ?>
</head>
<body>
	
<?php include('inc/header.php'); ?>
	
<div class="row contact">
	<div class="large-5 medium-5 small-12 columns">
		<br>
		<h2>Signez le livre d'or</h2>
		<div id="resultat">
		
    	</div>
    	<form data-abide id="formulaire">
    		<input type="hidden" name="datepicker" id="datepicker"  value="<?php echo date("d/m/Y")?>">
			<div class="row">
				<div class="large-12 columns">
					<label>Nom
						<input name="name" id="nom" type="text" placeholder="Nom"  />
					</label>
					<small class="error">Votre nom est obligatoire</small>
				</div>
			</div>
			<div class="row">
				<div class="large-12 columns">
					<label>e-mail
						<input name="email" id="email" type="email" placeholder="e-mail" required />
					</label>
					<small class="error">Votre e-mail est obligatoire</small>
				</div>
			</div>
			<div class="row">
				<div class="large-12 columns">
					<label>Message
						<textarea name="message" id="message" placeholder="Votre message" required></textarea>
					</label>
					<small class="error">Merci de saisir votre message</small>
				</div>
			</div>
			<div class="row">
				<div class="large-12 columns">
					<input type="checkbox" id="newsletter" name="newsletter"  checked/> J'accepte de recevoir notre newsletter.
				</div>
			</div>
			<input class="suite" type="submit" value="Laissez nous votre témoignage"/>
		</form>
	</div>
	<div class="large-7 medium-7 small-12 columns">
		<h1>Le Livre d'or Allée du Bio</h1>
		<p>Retrouvez ici les témoignages de nos adhérents</p>
			<div style=";border-bottom : 4px ridge white;padding:0px 4px 4px 4px; " >
			</div>
			<?php 
			if (!empty($result)) {
				$i=0;
				foreach ($result as $value) { 
				$i++;
				?>
				<div style=";border-bottom : 4px ridge white;padding:24px 4px 24px 4px; <?php if ($i%2==0) echo 'background: #FFF;'?>" >
					Message publiée le: <b><?php echo traitement_datetime_affiche($value['date'])?></b><br>
					<h4><?php echo $value['nom']?></h4>
					<p><?php echo nl2br($value['message'])?></p>
				</div>
				<?php } ?>
			<?php } ?>	
	</div>
	
</div>
<!-- /Content -->
<script type="text/javascript">

	$(document).on('submit','#formulaire',function(e) {
	  e.preventDefault();
	  data = $(this).serializeArray();

	  data.push({
	   		name: 'action',
	    	value: 'sendMail'
	  	})

	  console.log(data);

	    /* I put the above code for check data before send to ajax*/
	    $.ajax({
		        url: '/ajax/goldbook.php',
		        type: 'post',
		        data: data,
		        success: function (data) {
		            $("#resultat").html("<h3>Merci pour votre message</h3>");
		        	$("#nom").val("");
		           	$("#email").val("");
		           	$("#message").val("");
		        },
		        error: function() {
		        	 $("#resultat").html("<h3>Une erreur s'est produite !</h3>");
		        }
		   	});
	return false;
	})

</script>
	
	
<?php include('inc/footer.php'); ?>
	<script>
	$('.header ul li:nth-child(6)').addClass('active');
	</script>
</body>
</html>
