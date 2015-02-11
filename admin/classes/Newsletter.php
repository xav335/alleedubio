<?php
require_once("StorageManager.php");
class Newsletter extends StorageManager {

	public function __construct(){

	}
	
	public function newsletterGet($id){
		 $this->dbConnect();
		if (!isset($id)){
			$requete = "SELECT * FROM `newsletter` ORDER BY `date` DESC" ;
		} else {
			$requete = "SELECT * FROM `newsletter` WHERE `id_newsletter`=". $id ;
		}
		//print_r($requete);
		$new_array = null;
		$result = mysql_query($requete);
		while( $row = mysql_fetch_assoc( $result)){
			$new_array[] = $row;
		}
		
		$this->dbDisConnect();
		return $new_array;
	}
	
	public function newsletterAllGet($id){
		 $this->dbConnect();
			
		$requete = "SELECT * FROM `newsletter` WHERE `id`=". $id ;
		//print_r($requete);
		$new_array = null;
		$result = mysql_query($requete);
		while( $row = mysql_fetch_assoc( $result)){
			$new_arraydetail = null;
			$requete = "SELECT * FROM `newsletter_detail` as nld
						WHERE `id_newsletter`=". $row['id'] ." ORDER BY `id` ASC" ;
			//print_r($requete);
			$resultdetail = mysql_query($requete);
			
			$row['newsletter_detail'] = null;
			while( $rowdetail = mysql_fetch_assoc( $resultdetail)){
				$row['newsletter_detail'][] = $rowdetail;
			}
			
			$new_array[] = $row;
		}	
		$this->dbDisConnect();
		return $new_array;
	}
	
	public function newsletterAdd($value){
		//print_r($value); exit();
		 $this->dbConnect();
		$this->begin();
		try {
			$sql = "INSERT INTO  .`newsletter`
						(`date`, `titre`, `bas_page`)
						VALUES (
						'". $this->inserer_date($value['datepicker']) ."',
						'". addslashes($value['titre']) ."',
						'". addslashes($value['bas_page']) ."'
					);";
			$result = mysql_query($sql);
				
			if (!$result) {
				throw new Exception($sql);
			}
			$id_record = mysql_insert_id();
			
			$this->newsletterDetailAdd($value,$id_record);
			
			$this->commit();
	
		} catch (Exception $e) {
			$this->rollback();
			throw new Exception("Erreur Mysql newsletterAdd". $e->getMessage());
			return "errrrrrrooooOOor";
		}
		$this->dbDisConnect();
		return $id_record;
	}
	
	public function newsletterModify($value){
		//print_r($value); exit();
	
		 $this->dbConnect();
		$this->begin();
		try {
			$sql = "UPDATE  .`newsletter` SET
					`date`='". $this->inserer_date($value['datepicker']) ."',
					`titre`='". addslashes($value['titre']) ."',
					`bas_page`='". addslashes($value['bas_page']) ."'
					WHERE `id`=". $value['id'] .";";
			$result = mysql_query($sql);
			if (!$result) {
				throw new Exception($sql);
			}
			
			$this->newsletterDetailDelete( $value['id']);
			
			$this->newsletterDetailAdd($value, $value['id']);
			
			$this->commit();
	
		} catch (Exception $e) {
			$this->rollback();
			throw new Exception("Erreur Mysql newsletterModify ". $e->getMessage());
			return "errrrrrrooooOOor";
		}
	
		$this->dbDisConnect();
	}
	
	private function newsletterDetailAdd($value,$id){
		
		for ($i = 1; $i <  $value['ndencards']+1; $i++) {
		
			$sql = "INSERT INTO  .`newsletter_detail`
						(`id_newsletter`,`titre`, `url`, `link`,`texte`)
						VALUES (
						". $id .",
						'". addslashes($value['sstitre'.$i]) ."',
						'". addslashes($value['url'.$i]) ."',
						'". addslashes($value['link'.$i]) ."',
						'". addslashes($value['texte'.$i]) ."'
					);";
			$result = mysql_query($sql);
		
			if (!$result) {
				throw new Exception($sql);
			}
		
		}
	}	
	
	
	private function newsletterDetailDelete($id_newsletter){
		//print_r($id_newsletter); exit();
		try {
			$sql = "DELETE FROM  .`newsletter_detail`
					WHERE `id_newsletter`=". $id_newsletter .";";
			$result = mysql_query($sql);
			if (!$result) {
				throw new Exception($sql);
			}
		
		} catch (Exception $e) {
			throw new Exception("Erreur Mysql ". $e->getMessage());
			return "errrrrrrooooOOor";
		}
		
	}
	
	
	public function newsletterDetailUniqueDelete($id){
		//print_r($id); exit();
	
		 $this->dbConnect();
		$this->begin();
		try {
		$sql = "DELETE FROM  .`newsletter_detail`
					WHERE `id`=". $id .";";
			$result = mysql_query($sql);
			if (!$result) {
				throw new Exception($sql);
			}
			$this->commit();
	
		} catch (Exception $e) {
			$this->rollback();
			throw new Exception("Erreur Mysql ". $e->getMessage());
			return "errrrrrrooooOOor";
		}
	
	}
	
	public function newsletterDelete($value){
		//print_r($value); exit();
	
		 $this->dbConnect();
		$this->begin();
		try {
			$sql = "DELETE FROM  .`newsletter`
					WHERE `id`=". $value .";";
			$result = mysql_query($sql);
	
			if (!$result) {
				throw new Exception($sql);
			}
	
			$this->newsletterDetailDelete( $value );
			
			$this->commit();
	
		} catch (Exception $e) {
			$this->rollback();
			throw new Exception("Erreur Mysql ". $e->getMessage());
			return "errrrrrrooooOOor";
		}
	
	
		$this->dbDisConnect();
	}
	
}