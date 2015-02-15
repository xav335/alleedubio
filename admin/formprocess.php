<?php
require 'classes/Authentication.php';
require 'classes/News.php';
require 'classes/Goldbook.php';
require 'classes/Catproduct.php';
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
	
	// traitement des Categorie
	if ($_POST['reference'] == 'categorie'){
		//print_r($_POST);exit();
		$catproduct = new Catproduct();
		if ($_POST['action'] == 'modif') { //Modifier
			try {
				$result = $catproduct->catproductModify($_POST);
				$catproduct = null;
				header('Location: /admin/catproduct-list.php');
			} catch (Exception $e) {
				echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage(), "\n";
				$catproduct = null;
				exit();
			}
	
		} else {  //ajouter
			try {
				//print_r($_POST);exit();
				$result = $catproduct->catproductAdd($_POST);
				$catproduct = null;
				header('Location: /admin/catproduct-list.php');
			} catch (Exception $e) {
				echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage(), "\n";
				$catproduct = null;
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
	if ($_GET['reference'] == 'categorie'){ //supprimer
		$catproduct = new Catproduct();
		if ($_GET['action'] == 'delete'){
			try {
				$result = $catproduct->catproductDelete($_GET['id']);
				$contact = null;
				header('Location: /admin/catproduct-list.php');
			} catch (Exception $e) {
					echo 'Erreur contactez votre administrateur <br> :',  $e->getMessage() , '\n';
					$contact = null;
					if($e->getCode() == 1234){
						header('Location: /admin/catproduct-list.php?message='.$e->getCode());
					}
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