<?php
require_once("StorageManager.php");
class Authentication extends StorageManager {

	public function __construct(){

	}
	
	public function grantAccess($login,$mdp){
		 $this->dbConnect();
		$requete = "SELECT * FROM admin";
		$requete .= " WHERE login = '" . mysql_real_escape_string( $login ) . "'";
		$requete .= " AND mdp = '" . mysql_real_escape_string( $mdp ) . "'";
		//echo $requete . "<br><br>";
		$result = mysql_query($requete);
		$num_rows = mysql_num_rows($result);
	
		$this->dbDisConnect();
		if ($num_rows > 0)  {
			return true;
		} else {
			return false;
		}
	
	}
	
}