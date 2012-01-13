<?php
App::uses('AppController', 'Controller');
/**
 * Cdrs Controller
 *
 * @property Cdr $Cdr
 */
class AbbreviatesController extends AppController {
	
	public function beforeFilter() {
		parent::beforeFilter();
		$this -> Auth -> allow('*');
	}
	
	public function pruebas() {
		$this->autoRender = false;
		//debug($this->Abbreviate->find('all'));
		debug($this->paginate());
	}
	
	public function index() {
		$this -> Abbreviate -> recursive = 0;
		$conditions = array();
		if(isset($this->params['named']['query']) && !empty($this->params['named']['query'])) {
			$query = $this->params['named']['query'];
			$conditions['Abbreviate.name LIKE'] = "%$query%";
		}
		$this -> set('abbreviates', $this -> Abbreviate -> find('archivo'));
	}

}
