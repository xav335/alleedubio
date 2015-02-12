<?php
require_once("StorageManager.php");

class Catproduct extends StorageManager {

    var $tabView = null;
	var $i = 0;
	
	public function __construct(){

	}
	
	public function catproductByParentGet($id){
		$this->dbConnect();
		$requete = "SELECT * FROM `catproduct` WHERE parent=". $id ." ORDER BY label" ;
		//print_r($requete);
		$new_array = null;
		$result = mysqli_query($this->mysqli,$requete);
		while( $row = mysqli_fetch_assoc( $result)){
			$new_array[] = $row;
		}
		$this->dbDisConnect();
		return $new_array;
	}
	
	public function catproduitViewIterative($result){
		if ($this->i==0){
			$result = $this->catproductByParentGet(0);
			//print_r($result);
		}
		if (!empty($result)) {
	
			foreach ($result as $value) {
				$decalage = "";
				//for ($j=0; $j<($value['level'] * 5); $j++) $decalage .= " ";
				//echo $decalage. $this->i  . $value['label']." ". $value['id'] ." Lev:". $value['level'] . "<br>";
				$this->tabView[$this->i]['label'] = $value['label'];
				$this->tabView[$this->i]['id'] = $value['id'];
				$this->tabView[$this->i]['level'] = $value['level'];
				$this->tabView[$this->i]['image'] = $value['image'];
				$result = $this->catproductByParentGet($value['id']);
				//print_r($result);
				$this->i++;
				$this->catproduitViewIterative($result);
			}
	
		}
	}
	
	public function catproductGet($id){
		 $this->dbConnect();
		if (!isset($id)){
			$requete = "SELECT * FROM `catproduct` ORDER BY parent, level DESC" ;
		} else {
			$requete = "SELECT * FROM `catproduct` WHERE id=". $id ;
		}
		//print_r($requete);
		$new_array = null;
		$result = mysqli_query($this->mysqli,$requete);
		while( $row = mysqli_fetch_assoc( $result)){
			$new_array[] = $row;
		}
		$this->dbDisConnect();
		return $new_array;
	}
	
	public function catproductAdd($value){
		//print_r($value);
		//exit();
		 $this->dbConnect();
		$this->begin();
		try {
			$sql = "INSERT INTO  .`catproduct`
						(`date_catproduct`, `titre`, `accroche`, `contenu`)
						VALUES (
						'". $this->inserer_date($value['datepicker']) ."', 
						'". addslashes($value['titre']) ."',
						'". addslashes($value['accroche']) ."',
						'". addslashes($value['contenu']) ."' 	
					);";
			$result = mysqli_query($this->mysqli,$sql);
			
			if (!$result) {
				throw new Exception($sql);
			}
			$id_record = mysqli_insert_id($this->mysqli);
			$this->commit();
		
		} catch (Exception $e) {
			$this->rollback();
			throw new Exception("Erreur Mysql ". $e->getMessage());
			return "errrrrrrooooOOor";
		}
		$this->dbDisConnect();
		return $id_record;
	}
	
	public function catproductModify($value){
		//print_r($value);
		//exit();
		
		 $this->dbConnect();
		$this->begin();
		try {
			$sql = "UPDATE  .`catproduct` SET
					`date_catproduct`='". $this->inserer_date($value['datepicker']) ."', 
					`titre`='". addslashes($value['titre']) ."', 
					`accroche`='". addslashes($value['accroche']) ."', 
					`contenu`='". addslashes($value['contenu']) ."' 
					WHERE `id_catproduct`=". $value['id'] .";";
			$result = mysqli_query($this->mysqli,$sql);
			
			if (!$result) {
				throw new Exception($sql);
			}
		
			$this->commit();
		
		} catch (Exception $e) {
			$this->rollback();
			throw new Exception("Erreur Mysql ". $e->getMessage());
			return "errrrrrrooooOOor";
		}
		
		
		$this->dbDisConnect();
	}
	
	public function catproductDelete($value){
		//print_r($value);
		//exit();
	
		 $this->dbConnect();
		$this->begin();
		try {
			$sql = "DELETE FROM  .`catproduct` 
					WHERE `id_catproduct`=". $value .";";
			$result = mysqli_query($this->mysqli,$sql);
				
			if (!$result) {
				throw new Exception($sql);
			}
	
			$this->commit();
	
		} catch (Exception $e) {
			$this->rollback();
			throw new Exception("Erreur Mysql ". $e->getMessage());
			return "errrrrrrooooOOor";
		}
	
	
		$this->dbDisConnect();
	}
	
	
}