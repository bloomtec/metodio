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
	
	public $validate = array(
		'abbreviate' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				'message' => 'Debe ingresar un abreviado',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
			'isUnique' => array(
				'rule' => array('isUnique'),
				'message' => 'Ya existe este abreviado',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'phone' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				'message' => 'Debe ingresar un teléfono',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);

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
