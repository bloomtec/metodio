<?php
App::uses('AppController', 'Controller');
/**
 * Abbreviates Controller
 *
 * @property Abbreviate $Abbreviate
 */
class AbbreviatesController extends AppController {

	public function beforeFilter() {
		parent::beforeFilter();
		$this -> Auth -> allow('*');
	}

	public function admin_fillDB() {
		$this -> autoRender = false;
		if ($this -> Abbreviate -> fillDBFromFile()) {
			echo 'se lleno la tabla con los datos del archivo';
		} else {
			echo 'error';
		}
	}

	/**
	 * index method
	 *
	 * @return void
	 */
	public function index() {
		$this -> Abbreviate -> recursive = 0;
		$conditions = array();
		if (isset($this -> params['named']['query']) && !empty($this -> params['named']['query'])) {
			$query = $this -> params['named']['query'];
			$conditions['Abbreviate.abbreviate LIKE'] = "%$query%";
		}
		$this -> paginate = array('conditions' => $conditions, 'order' => array('Abbreviate.abbreviate' => 'ASC'));
		$this -> set('abbreviates', $this -> paginate());
	}

	/**
	 * view method
	 *
	 * @param string $id
	 * @return void
	 */
	public function view($id = null) {
		$this -> Abbreviate -> id = $id;
		if (!$this -> Abbreviate -> exists()) {
			throw new NotFoundException(__('Invalid abbreviate'));
		}
		$this -> set('abbreviate', $this -> Abbreviate -> read(null, $id));
	}

	/**
	 * add method
	 *
	 * @return void
	 */
	public function add() {
		if ($this -> request -> is('post')) {
			$this -> Abbreviate -> create();
			if ($this -> Abbreviate -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('The abbreviate has been saved'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('The abbreviate could not be saved. Please, try again.'), 'crud/error');
			}
		}
	}

	/**
	 * edit method
	 *
	 * @param string $id
	 * @return void
	 */
	public function edit($id = null) {
		$this -> Abbreviate -> id = $id;
		if (!$this -> Abbreviate -> exists()) {
			throw new NotFoundException(__('Invalid abbreviate'));
		}
		if ($this -> request -> is('post') || $this -> request -> is('put')) {
			if ($this -> Abbreviate -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('The abbreviate has been saved'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('The abbreviate could not be saved. Please, try again.'), 'crud/error');
			}
		} else {
			$this -> request -> data = $this -> Abbreviate -> read(null, $id);
		}
	}

	/**
	 * delete method
	 *
	 * @param string $id
	 * @return void
	 */
	public function delete($id = null) {
		if (!$this -> request -> is('post')) {
			throw new MethodNotAllowedException();
		}
		$this -> Abbreviate -> id = $id;
		if (!$this -> Abbreviate -> exists()) {
			throw new NotFoundException(__('Invalid abbreviate'));
		}
		if ($this -> Abbreviate -> delete()) {
			$this -> Session -> setFlash(__('Abbreviate deleted'), 'crud/success');
			$this -> redirect(array('action' => 'index'));
		}
		$this -> Session -> setFlash(__('Abbreviate was not deleted'), 'crud/error');
		$this -> redirect(array('action' => 'index'));
	}

	/**
	 * admin_index method
	 *
	 * @return void
	 */
	public function admin_index() {
		$this -> Abbreviate -> recursive = 0;
		$conditions = array();
		if (isset($this -> params['named']['query']) && !empty($this -> params['named']['query'])) {
			$query = $this -> params['named']['query'];
			$conditions['Abbreviate.abbreviate LIKE'] = "%$query%";
		}
		$this -> paginate = array('conditions' => $conditions, 'order' => array('Abbreviate.abbreviate' => 'ASC'));
		$this -> set('abbreviates', $this -> paginate());
	}

	/**
	 * admin_view method
	 *
	 * @param string $id
	 * @return void
	 */
	public function admin_view($id = null) {
		$this -> Abbreviate -> id = $id;
		if (!$this -> Abbreviate -> exists()) {
			throw new NotFoundException(__('Invalid abbreviate'));
		}
		$this -> set('abbreviate', $this -> Abbreviate -> read(null, $id));
	}

	/**
	 * admin_add method
	 *
	 * @return void
	 */
	public function admin_add() {
		if ($this -> request -> is('post')) {
			$this -> Abbreviate -> create();
			if ($this -> Abbreviate -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('The abbreviate has been saved'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('The abbreviate could not be saved. Please, try again.'), 'crud/error');
			}
		}
	}

	/**
	 * admin_edit method
	 *
	 * @param string $id
	 * @return void
	 */
	public function admin_edit($id = null) {
		$this -> Abbreviate -> id = $id;
		if (!$this -> Abbreviate -> exists()) {
			throw new NotFoundException(__('Invalid abbreviate'));
		}
		if ($this -> request -> is('post') || $this -> request -> is('put')) {
			if ($this -> Abbreviate -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('The abbreviate has been saved'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('The abbreviate could not be saved. Please, try again.'), 'crud/error');
			}
		} else {
			$this -> request -> data = $this -> Abbreviate -> read(null, $id);
		}
	}

	/**
	 * admin_delete method
	 *
	 * @param string $id
	 * @return void
	 */
	public function admin_delete($id = null) {
		if (!$this -> request -> is('post')) {
			throw new MethodNotAllowedException();
		}
		$this -> Abbreviate -> id = $id;
		if (!$this -> Abbreviate -> exists()) {
			throw new NotFoundException(__('Invalid abbreviate'));
		}
		if ($this -> Abbreviate -> delete()) {
			$this -> Session -> setFlash(__('Abbreviate deleted'), 'crud/success');
			$this -> redirect(array('action' => 'index'));
		}
		$this -> Session -> setFlash(__('Abbreviate was not deleted'), 'crud/error');
		$this -> redirect(array('action' => 'index'));
	}

}
