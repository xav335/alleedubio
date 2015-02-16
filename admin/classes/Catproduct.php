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
	
	public function getProductsByCategorie($id){
		$this->dbConnect();
		$requete = "SELECT pdt.id, pdt.label 
				FROM product as pdt 
				INNER JOIN product_categorie as cp 
				WHERE cp.id_categorie=". $id ;
		//print_r($requete);exit();
		$new_array = null;
		$result = mysqli_query($this->mysqli,$requete);
		while( $row = mysqli_fetch_assoc( $result)){
			$new_array[] = $row;
		}
		$this->dbDisConnect();
		return $new_array;
	}
	
	public function getCategorieByProduct($id){
		$requete = "SELECT catproduct.label as catlabel,catproduct.id as catid
					FROM product 
					INNER JOIN product_categorie ON product.id=product_categorie.id_product 
					INNER JOIN catproduct ON catproduct.id = product_categorie.id_categorie 
					WHERE product.id=". $id ;
		//print_r($requete);exit();
		$new_array = null;
		$result = mysqli_query($this->mysqli,$requete);
		while( $row = mysqli_fetch_assoc( $result)){
			$new_array[] = $row;
		}
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
				$this->tabView[$this->i]['description'] = $value['description'];
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
		$requete = "SELECT * FROM `catproduct` WHERE id=". $id ;
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
		if ($value['parent'] != 0){
			$parent = $this->catproductGet($value['parent']);
			$level = $parent[0]['level']+1;
		} else {
			$level = 0;
		}
		//print_r($value);exit();
		
		$this->dbConnect();
		$this->begin();
		try {
			$sql = "INSERT INTO  .`catproduct`
						(`label`, `parent`, `level`)
						VALUES (
						'". addslashes($value['label']) ."',
						'". addslashes($value['parent']) ."',
						". $level ." 	
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
		//print_r($value);exit();
		$this->dbConnect();
		$this->begin();
		try {
			$sql = "UPDATE  .`catproduct` SET
					`label`='". addslashes($value['label']) ."', 
					`description`='". addslashes($value['description']) ."', 
					`image`='". addslashes($value['url1']) ."' 
					WHERE `id`=". $value['id'] .";";
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
		
		//Check if the categorie is empty !
		$prod = $this->getProductsByCategorie($value);
		print_r($prod);
		if (!empty($prod)){
			throw new Exception("La categorie n'est pas vide ! ",1234);
		}
		
		$this->dbConnect();
		$this->begin();
		try {
			$sql = "DELETE FROM  .`catproduct` 
					WHERE `id`=". $value .";";
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
	
	public function productNumberGet(){
		$this->dbConnect();
		try {
			$requete = "SELECT count(*) as nb FROM `product`;" ;
			//print_r($requete);
			$new_array = null;
			$result = mysqli_query($this->mysqli,$requete);
			while( $row = mysqli_fetch_assoc( $result)){
				$new_array[] = $row;
			}
			$this->dbDisConnect();
			return $new_array[0]['nb'];
		} catch (Exception $e) {
			throw new Exception("Erreur Mysql contactGet ". $e->getMessage());
			return "errrrrrrooooOOor";
		}
	}
	
	public function productGet($id, $offset, $count){
		$this->dbConnect();
		try {
			if (!isset($id)){
				if (isset($offset) && isset($count)) {
					$requete = "SELECT product.id,product.reference,product.prix,product.label
								FROM product 
								ORDER BY  product.label
								ASC LIMIT ". $offset .",". $count .";" ;
				} else {
					$requete = "SELECT * FROM `product` ORDER BY `label`;" ;
				}
			} else {
				$requete = "SELECT product.*
							FROM product 
							WHERE product.id=". $id;
			}
			//print_r($requete);
			$new_array = null;
			$result = mysqli_query($this->mysqli,$requete);
			while( $row = mysqli_fetch_assoc( $result)){
				$resultdetail = $this->getCategorieByProduct($row['id']);
				$row['categories'] = $resultdetail;
				$new_array[] = $row;
			}
			
			
			
			$this->dbDisConnect();
			return $new_array;
		} catch (Exception $e) {
			die('Erreur : ' . $e->getMessage());
			//throw new Exception("Erreur Mysql productGet ". $e->getMessage());
			return "errrrrrrooooOOor";
		}
	}
	
	/*[reference] => product
	[action] => modif
	[id] => 1
	[idImage] =>
	[label] => huile d'olive
    [ref] => T4534
    [prix] => 13.51
    [accroche] => <p>lorem ipsum dolor</p>
    [description] => <p>huile d'olivehuile d'olivehuile d'olivehuile d'olivehuile d'olivehuile d'olive</p>
	    [url1] => /uploads/Images categories/IMG_1008.jpg
	    [url2] => /uploads/Images categories/IMG_1014 - Copy 1.jpg
	    [url3] => /uploads/Images categories/IMG_1008.jpg
	    )*/
	
	public function productModify($value){
		print_r($value);exit();
		$this->dbConnect();
		$this->begin();
		try {
			$sql = "UPDATE  .`product` SET
					`label`='". addslashes($value['label']) ."',
					`description`='". addslashes($value['description']) ."',
					`image`='". addslashes($value['url1']) ."'
					WHERE `id`=". $value['id'] .";";
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