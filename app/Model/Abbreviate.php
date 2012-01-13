<?php
App::uses('AppModel', 'Model');
/**
 * Abbreviate Model
 *
 */
class Abbreviate extends AppModel {
	/**
	 * Display field
	 *
	 * @var string
	 */
	public $displayField = 'abbreviate';

	var $path = 'files/numeros_abreviados.txt';

	public function fillDBFromFile() {
		$this -> query('TRUNCATE TABLE abbreviates');
		$data = $this -> readFile();
		return $this -> saveAll($data);
	}

	private function readFile() {
		$file = new File($this -> path, false, 0644);
		$data = false;
		if ($file -> exists()) {
			$data = $file -> read();
		}
		$file -> close();
		if ($data) {
			$tmp_data = explode('*', $data);
			$data = array();
			foreach ($tmp_data as $id => $abbreviate_info) {
				if (!empty($abbreviate_info)) {
					$info = explode('|', $abbreviate_info);
					$data[] = array('Abbreviate' => array('id' => $id, 'abbreviate' => '*' . $info[0], 'phone' => $info[1]));
				}
			}
		}
		return $data;
	}

}
