<!doctype html>
<html class="no-js" lang="en">
<head>
	<title>Allée du Bio | Contact</title>
<?php include('inc/meta.php'); ?>
</head>
<body>
	
<?php include('inc/header.php'); ?>
	
	<!-- Content -->
<div class="row contact">
	<div class="large-8 medium-8 small-12 columns">
		<h1>Contactez mous</h1>
	
		<div id="resultat">
		
    	</div>
		<form data-abide id="formulaire">
			<div class="row">
				<div class="large-6 columns">
					<label>Nom
						<input type="text" id="nom" name="name" placeholder="Nom" required pattern="[a-zA-Z]+" />
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
	<div class="large-4 medium-4 small-12 columns">
		<div class="large-12 columns">
			<img src="img/facebooklogo.png" alt="" />
				<p>
					Toutes les nouvelles, les évenements et les infos de dernières minutes.
					<div class="fb-like" data-href="https://fr-fr.facebook.com/pages/all%C3%A9e-du-bio/248912365125030" data-layout="button_count" data-action="like" data-show-faces="true" data-share="true"></div>
				</p>
				<a class="suite" target="_blank" href="https://fr-fr.facebook.com/pages/all%C3%A9e-du-bio/248912365125030"><img src="img/facebooksmall.png" alt="" />  Visitez notre page Facebook</a>
			
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
	
	<!-- Google maps -->
	<div class="row">
		<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d2825.5787808515875!2d-0.3935797!3d44.91156420000001!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd5531420a3b61a1%3A0x9187996c4e9373e3!2s20+Avenue+de+Maucaillou%2C+33450+Saint-Sulpice-et-Cameyrac!5e0!3m2!1sfr!2sfr!4v1422202196329" frameborder="0" class="gmaps"></iframe>
	</div>
	<!-- Fin Google maps -->
	
	
<?php include('inc/footer.php'); ?>
	<script>
		$('.header ul li:last-child').addClass('active');
	</script>
</body>
</html>
