<?php
require 'classes/Authentication.php';
require 'classes/News.php';
require 'classes/Goldbook.php';
require 'classes/Newsletter.php';
require 'classes/Contact.php';
require 'classes/Planning.php';
session_start();

$authentication = new Authentication();
//Security
if (!isset($_SESSION['accessGranted']) || !$_SESSION['accessGranted']) {
	$result = $storageManager->grantAccess($_POST['login'], $_POST['mdp']);
	if (!$result){
		header('Location: /admin/?action=error');
	} else {
		$_SESSION['accessGranted'] = true;
	}
}

//print_r($_POST);
//exit();
//Forms processing
if (!empty($_POST)){
	
	// traitement du planning
	$planning = new Planning();
	if ($_POST['reference'] == 'planning'){
		if ($_POST['action'] == 'modif') { //Modifier la news
			try {
				$result = $planning->planningModify($_POST);
				header('Location: /admin/home.php');
			} catch (Exception $e) {
				echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage(), "\n";
				exit();
			}
		} 
	}
	
	// traitement des news
	$news = new News();
	if ($_POST['reference'] == 'news'){
		if ($_POST['action'] == 'modif') { //Modifier la news
			try {
				$result = $news->newsModify($_POST);
				header('Location: /admin/news-list.php');
			} catch (Exception $e) {
				echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage(), "\n";
				exit();
			}
			
		} else {  //ajouter une news
			try {
				$result = $news->newsAdd($_POST);
				header('Location: /admin/news-edit.php?id='.$result);
			} catch (Exception $e) {
				echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage(), "\n";
				exit();
			}
		}
		
	}
	
	// traitement des livre d'or
	if ($_POST['reference'] == 'goldbook'){
		$goldbook = new Goldbook();
		if ($_POST['action'] == 'modif') { //Modifier 
			try {
				$result = $goldbook->goldbookModify($_POST);
				$goldbook = null;
				header('Location: /admin/goldbook-list.php');
			} catch (Exception $e) {
				echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage(), "\n";
				$goldbook = null;
				exit();
			}
				
		} else {  //ajouter 
			try {
				$result = $goldbook->goldbookAdd($_POST);
				$goldbook = null;
				header('Location: /admin/goldbook-edit.php?id='.$result);
			} catch (Exception $e) {
				echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage(), "\n";
				$goldbook = null;
				exit();
			}
		}
	}
	
	// traitement des Contact
	if ($_POST['reference'] == 'contact'){
		$contact = new Contact();
		if ($_POST['action'] == 'modif') { //Modifier
			try {
				$result = $contact->contactModify($_POST);
				$contact = null;
				header('Location: /admin/contact-list.php');
			} catch (Exception $e) {
				echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage(), "\n";
				$contact = null;
				exit();
			}
	
		} else {  //ajouter
			try {
				$result = $contact->contactAdd($_POST);
				$contact = null;
				header('Location: /admin/contact-edit.php?id='.$result);
			} catch (Exception $e) {
				echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage(), "\n";
				$contact = null;
				exit();
			}
		}
	}
	
	// traitement des newsletters
	if ($_POST['reference'] == 'newsletter'){
		//print_r($_POST); exit();
		$newsletter = new Newsletter();
		if ($_POST['action'] == 'modif' ) { //Modifier
			try {
				if ($_POST['postaction'] !='delBloc') {
					$result = $newsletter->newsletterModify($_POST);
				}
				if ($_POST['postaction'] == 'preview' ) {
					$newsletter = null;
					header('Location: /admin/mailnewslettercore.php?postaction=preview&id='. $_POST['id']);
				} elseif ($_POST['postaction']=='addBloc') {
					$newsletter = null;
					header('Location: /admin/newsletter-edit.php?addBloc=1&id='. $_POST['id']);
				} elseif ($_POST['postaction']=='delBloc') {
					$newsletter->newsletterDetailUniqueDelete($_POST['idbloc']);
					$newsletter = null;
					header('Location: /admin/newsletter-edit.php?id='. $_POST['id']);
				} else {
					header('Location: /admin/newsletter-list.php');
				}	
				
			} catch (Exception $e) {
				echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage(), "\n";
				$newsletter = null;
				exit();
			}
		} elseif ($_POST['action'] == 'envoi' ) {  //ajouter
			if ($_POST['postaction'] == 'envoi' ) {
				header('Location: /admin/mailnewslettercore.php?action=envoi&postaction=envoi&id='. $_POST['id']);
			} else {
				header('Location: /admin/mailnewslettercore.php?action=envoi&postaction=preview&id='. $_POST['id']);
			}	
			
		} else {  //ajouter
			try {
				$result = $newsletter->newsletterAdd($_POST);
				$newsletter = null;
				header('Location: /admin/newsletter-edit.php?id='.$result);
			} catch (Exception $e) {
				echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage(), "\n";
				$newsletter = null;
				exit();
			}
		}
	}
	
} elseif (!empty($_GET)) { // GET GET GET
	if ($_GET['reference'] == 'news'){ //supprimer
		$news = new News();
		if ($_GET['action'] == 'delete'){
			try {
				$result = $news->newsDelete($_GET['id']);
				$news = null;
				header('Location: /admin/news-list.php');
			} catch (Exception $e) {
				echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage(), "\n";
				$news = null;
				exit();
			}
		}	
	}
	if ($_GET['reference'] == 'goldbook'){ //supprimer
		$goldbook = new Goldbook();
		if ($_GET['action'] == 'delete'){
			try {
				$result = $goldbook->goldbookDelete($_GET['id']);
				$goldbook = null;
				header('Location: /admin/goldbook-list.php');
			} catch (Exception $e) {
				echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage(), "\n";
				$goldbook = null;
				exit();
			}
		}
	}
	if ($_GET['reference'] == 'contact'){ //supprimer
		$contact = new Contact();
		if ($_GET['action'] == 'delete'){
			try {
				$result = $contact->contactDelete($_GET['id']);
				$contact = null;
				header('Location: /admin/contact-list.php');
			} catch (Exception $e) {
				echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage(), "\n";
				$contact = null;
				exit();
			}
		}
	}
	if ($_GET['reference'] == 'newsletter'){ //supprimer
		$newsletter = new Newsletter();
		if ($_GET['action'] == 'delete'){
			try {
				$result = $newsletter->newsletterDelete($_GET['id']);
				$newsletter = null;
				header('Location: /admin/newsletter-list.php');
			} catch (Exception $e) {
				echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage(), "\n";
				exit();
			}
		}
	}
} else {
	header('Location: /admin/');
}

?>