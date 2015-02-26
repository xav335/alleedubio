<!doctype html>
<html class="no-js" lang="en">
<head>
	<title>Allée du Bio: Contact - Plan d'accès</title>
	<meta name="description" content="Contactez nous ! retrouvez nous sur Facebook !" />
	<meta name="keywords" content="contact, plan, facebook, formulaire de contact, telephone, email, adresse" />
<?php include('inc/meta.php'); ?>
</head>
<body>
	
<?php include('inc/header.php'); ?>
	
	<!-- Content -->
<div class="row ">
	<div class="large-8 medium-8 small-12 columns contact">
		<h1>Contactez nous</h1>
		<div class="row bdc" style="border-bottom:1px solid #61a141; margin-bottom: 20px;">
			<div class="large-8 medium-8 small-8 columns" >
				<h3>Alléé du Bio</h2>
				<p>
					 20 Avenue Maucaillou <br>
					 33450 SAINT SULPICE ET CAMEYRAC<br>
					 tél. <b>05 56 30 55 08</b><br>
					 <b>Horaire d'ouverture:</b>
					  9h - 19h du Mardi au Vendredi<br>
					 Samedi : 14h - 20h
				</p>
				
			</div>
			<div class="large-4 medium-4 small-4 columns">
				<a href="<?php echo $pdf ?>" target="_blank"><img src="/img/livreur.png"  alt=""  /></a>
			</div>
		</div>
		<div id="resultat">
    	</div>
		<form data-abide id="formulaire">
			<div class="row">
				<div class="large-6 columns">
					<label>Nom
						<input type="text" id="nom" name="name" placeholder="Nom" required  />
					</label>
					<small class="error">Votre nom est obligatoire</small>
				</div>
				<div class="large-6 columns">
					<label>Prénom
						<input id="prenom" type="text" name="firstname" placeholder="Prénom" />
					</label>
				</div>
			</div>
			<div class="row">
				<div class="large-6 columns">
					<label>Téléphone
						<input type="text" id="tel" name="tel" placeholder="Téléphone" />
					</label>
					<small class="error">Votre téléphone est obligatoire</small>
				</div>
				<div class="large-6 columns">
					<label>e-mail
						<input type="text" id="email" name="email" placeholder="e-mail" required />
					</label>
					<small class="error">Votre e-mail est obligatoire</small>
				</div>
			</div>
			<div class="row">
				<div class="large-12 columns">
					<label>Sujet
						<select required id="sujet" name="sujet" >
							<option value="les produits">les produits</option>
							<option value="les horaires">les horaires</option>
							<option value="la livraison">la livraison</option>
							<option value="autre">toute autre chose</option>
						</select>
					</label>
					<small class="error">Merci de choisir un sujet</small>
				</div>
			</div>
			
			<div class="row">
				<div class="large-12 columns">
					<label>Message
						<textarea id="message" name="message" placeholder="Votre message" required></textarea>
					</label>
					<small class="error">Merci de saisir votre message</small>
				</div>
			</div>
			<div class="row">
				<div class="large-12 columns">
					<input type="checkbox" id="newsletter" name="newsletter"  checked/> J'accepte de recevoir la newsletter.
				</div>
			</div>
			<button type="submit">Envoyer votre message</button>
		</form>
	</div>
	<div class="large-4 medium-4 small-12 columns " >
		<div class="encart" style="margin-top: 17px;padding-left: 15px;padding-right: 15px;">
			<h1>Plan d'accès</h1>
			<a href="https://www.google.com/maps/place/20+Avenue+de+Maucaillou,+33450+Saint-Sulpice-et-Cameyrac,+France/@44.911564,-0.39358,16z/data=!4m2!3m1!1s0xd5531420a3b61a1:0x9187996c4e9373e3?hl=en-US" target="_blank"><img src="img/plan.png" alt="" /></a>
		</div>	
		<div class="encart" style="margin-top: 0px;padding-left: 15px;padding-right: 15px;">
			<img src="img/facebooklogo.png" alt="" />
			<p>
				Toutes les nouvelles, les évenements et les infos de dernières minutes.
				<div class="fb-like" data-href="https://fr-fr.facebook.com/pages/all%C3%A9e-du-bio/248912365125030" data-layout="button_count" data-action="like" data-show-faces="true" data-share="true"></div>
			</p>
			<a class="suite" target="_blank" href="https://fr-fr.facebook.com/pages/all%C3%A9e-du-bio/248912365125030"><img src="img/facebooksmall.png" alt="" />  Visitez notre page Facebook</a>
		</div>	
		<div class="actualites" style="margin-top: 0px;padding-left: 15px;padding-right: 15px;">
			<h2>Liens partenaires</h2>
			<a href="partenaires.php"  class="bt-plus">Liens partenaires</a>
		</div>	
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
		        url: '/ajax/contact.php',
		        type: 'post',
		        data: data,
		        success: function (data) {
		            $("#resultat").html("<h4>Merci pour votre message - Nous allons y donner suite rapidement</h4>");
		        	$("#nom").val("");
		        	$("#prenom").val("");
		        	$("#email").val("");
		        	$("#tel").val("");
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
		$('.header ul li:last-child').addClass('active');
	</script>
</body>
</html>
