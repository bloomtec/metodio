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
		debug($this->Abbreviate->read());
	}

}
