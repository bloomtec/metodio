<?php
App::uses('AppModel', 'Model');
App::uses('File', 'Utility');
/**
 * CostCenter Model
 *
 * @property SipDispositivo $SipDispositivo
 */
class Abbreviate extends AppModel {

	var $path = 'files/numeros_abreviados.txt';

	public function read($col = null, $index = null) {
		$file = new File($this -> path, false, 0644);
		$data = false;
		if ($file -> exists()) {
			$data = $file -> read();
		}
		$file -> close();
		if($data) {
			$tmp_data = array();
		}
		return $data;
	}

}
