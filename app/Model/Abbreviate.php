<?php
App::uses('AppModel', 'Model');
App::uses('File', 'Utility');
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
	
	var $updateFromfile = false;
	
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
		$this->updateFromfile = false;
		if($data = $this->readFile()) {
			$this->updateFromfile=true;
			$this->query('TRUNCATE TABLE abbreviates');
			$success = true;
			foreach ($data as $key => $value) {
				if(!$this -> save($value)) $success = false;
			}
			$this->updateFromfile=false;
			return $success;
		} else {
			return false;
		}
	}

	public function readFile() {
		$file = new File($this -> path, false, 0644);
		$data = null;
		if ($file -> exists() && $file -> readable()) {
			$data = $file -> read();
		} else {
			return false;
		}
		$file -> close();
		if ($data) {
			$tmp_data = explode('*', $data);
			$data = array();
			foreach ($tmp_data as $id => $abbreviate_info) {
				if (!empty($abbreviate_info)) {
					$info = explode('|', $abbreviate_info);
					$data[] = array('Abbreviate' => array('id' => $id, 'abbreviate' => '*' . trim($info[0]), 'phone' => trim($info[1])));
				}
			}
		}
		return $data;
	}

	private function writeFile() {
		$file = new File($this -> path, true, 0644);
		if ($file -> exists() && $file->delete()) {
			$file->create();
			$abreviados = $this -> find('all');
			foreach ($abreviados as $key => $value) {
				$texto = $value['Abbreviate']['abbreviate'] . '|' . $value['Abbreviate']['phone'].chr(13);
				$file -> append($texto);
			}
		} else {
			// TODO : Hacer algo si no existe el archivo? (¡antes de crearlo!)
		}
		$file -> close();
	}
	
	public function afterSave($created) {
		if($created) {
			// Que hacer cuando es creado el registro
		} else {
			// Que hacer cuando es actualizado el registro
		}
		if(!$this->updateFromfile) {
			$this -> writeFile();
		}
	}
	
	public function afterDelete() {
		$this -> writeFile();
	}

}