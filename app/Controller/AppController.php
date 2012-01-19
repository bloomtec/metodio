<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2011, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2011, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       Cake.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */

App::uses('Controller', 'Controller');
App::uses('CakeEmail', 'Network/Email');

/**
 * This is a placeholder class.
 * Create the same file in app/Controller/AppController.php
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package       Cake.Controller
 * @link http://book.cakephp.org/view/957/The-App-Controller
 */
class AppController extends Controller {

	public $cacheAction = true;

	public $components = array('Auth', 'Acl', 'Session');

	public function beforeFilter() {
		$this -> Auth -> authorize = array('Actions' => array('actionPath' => 'controllers'));
		$this -> Auth -> authenticate = array('Form' => array('fields' => array('username' => 'username', 'password' => 'password')));
		$this -> Auth -> scope = array('is_active' => true);
		$this -> Auth -> loginAction = array('controller' => 'users', 'action' => 'login');
		$this -> Auth -> loginRedirect = array('controller' => 'users', 'action' => 'userRedirect');
		$this -> Auth -> logoutRedirect = array('controller' => 'users', 'action' => 'login', 'admin' => false);
	}

	/**
	 * @fields	: arreglo que contiene los nombres de las columnas del modelo que se quieren imprimir
	 */
	public function CSVExport() {
		$this -> autoRender = false;
		$model = $this -> modelClass;
		$model_fields = $this -> $model -> schema();
		$requested_fields = $this->request->params['named']['fields'];
		$export_type = $this->request->params['named']['type'];
		
		if($requested_fields) {
			$requested_fields = explode(',', $requested_fields);
			debug($requested_fields);
		}
		
		/*
		if ($fields) {
			foreach ($fields as $field) {
				if (isset($model_fields[$field]) && $this -> $model -> isForeignKey($field)) {
					$foreign_model = substr(Inflector::camelize($field), 0, -2);
					$this -> $model -> $foreign_model -> recursive = -1;
					$foreign_display_name = $this -> $model -> $foreign_model -> displayField;
					$foreign_conditions = array("$foreign_model.$foreign_display_name LIKE" => "%$query%");
					$foreign_results = $this -> $model -> $foreign_model -> find('list', array('fields' => array("$foreign_model.id"), 'conditions' => $foreign_conditions));
					if (!empty($foreign_results)) {
						$conditions['OR'][$model . ".$field"] = $foreign_results;
					}
				} elseif (isset($model_fields[$field])) {
					$conditions['OR'][$model . ".$field LIKE"] = "%$query%";
				}
			}
		}
		 */
		
		/**
		 * Sección para imprimir
		 */
		$delimiter = ','; // Delimitador para el archivo CSV 
		$enclosure = '"'; // Caracter que encapsula el valor de la columna
		$filename = "$model.csv"; // Nombre del archivo CSV
		$line = array(); // Linea de datos para agregar al archivo
		$buffer = fopen('php://temp/maxmemory:'. (5*1024*1024), 'r+');
		$rows = array();
		foreach($rows as $row) {
			// $line --> $row en este caso
			fputcsv($buffer, $row, $delimiter, $enclosure);
		}
		
		// Devolverse
		// $this -> redirect($this->referer());
	}

	/**
	 * @query	: el texto que se va a buscaar
	 * @fields	: arreglo que contiene los nombres de las columnas del modelo en los que se quiere buscar
	 */
	public function searchFilter($query = null, $fields = null) {
		$conditions = array();
		$model = $this -> modelClass;
		$model_fields = $this -> $model -> schema();
		if ($fields) {
			foreach ($fields as $field) {
				if (isset($model_fields[$field]) && $this -> $model -> isForeignKey($field)) {
					$foreign_model = substr(Inflector::camelize($field), 0, -2);
					$this -> $model -> $foreign_model -> recursive = -1;
					$foreign_display_name = $this -> $model -> $foreign_model -> displayField;
					$foreign_conditions = array("$foreign_model.$foreign_display_name LIKE" => "%$query%");
					$foreign_results = $this -> $model -> $foreign_model -> find('list', array('fields' => array("$foreign_model.id"), 'conditions' => $foreign_conditions));
					if (!empty($foreign_results)) {
						$conditions['OR'][$model . ".$field"] = $foreign_results;
					}
				} elseif (isset($model_fields[$field])) {
					$conditions['OR'][$model . ".$field LIKE"] = "%$query%";
				}
			}
		}
		return $conditions;
	}

}
