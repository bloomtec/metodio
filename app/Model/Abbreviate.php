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
	var $findMethods = array('archivo' =>  true);

	public function read($col = null, $index = null) {
		$file = new File($this -> path, false, 0644);
		$data = false;
		if ($file -> exists()) {
			$data = $file -> read();
		}
		$file -> close();
		if ($data) {
			$tmp_data = explode('*', $data);
			//$tmp_data = preg_split('*', $data, PREG_SPLIT_DELIM_CAPTURE);
			$data = array();
			foreach ($tmp_data as $abbreviate_info) {
				if (!empty($abbreviate_info)) {
					$info = explode('|', $abbreviate_info);
					$data[] = array('Abbreviate' => array('abbreviate' => '*' . $info[0], 'phone' => $info[1]));
				}
			}
		}
		if ($index) {
			return $data[$index];
		} else {
			return $data;
		}
	}

}
