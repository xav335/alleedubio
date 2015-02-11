<?php
class StorageManager{

	public function __construct(){
	
	}
	
	////////////////// UTILS UTILS UTILS UTILS UTILS UTILS UTILS UTILS UTILS UTILS UTILS //////////////////////////
	protected function inserer_date($date) {
		$tab = split("/", $date);
		return $tab[2] . "-" . $tab[1] . "-" . $tab[0];
	}
	
	protected function dbConnect() {
		$host = "localhost";
		$user = "alleedubio";
		$pass = "alleedubio33";
		$bdd = "alleedubio";
			
		// connexion
		mysql_connect($host, $user, $pass)
		or die("Impossible de se connecter (Probleme de connexion)");
		mysql_select_db($bdd)
		or die("Impossible de se connecter (Probleme de base)");
		mysql_query("SET NAMES UTF8");
	}
	
	
	protected function dbDisConnect() {
		mysql_close();
	}
	
	protected function begin() {
		mysql_query("BEGIN");
	}
	protected function commit() {
		mysql_query("COMMIT");
	}
	protected function rollback() {
		mysql_query("ROLLBACK");
	}

}

?>