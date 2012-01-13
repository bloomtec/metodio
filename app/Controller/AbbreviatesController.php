<?php
App::uses('AppController', 'Controller');
/**
 * Abbreviates Controller
 *
 * @property Abbreviate $Abbreviate
 */
class AbbreviatesController extends AppController {

	public function admin_fillDB() {
		$this -> autoRender = false;
		if ($this -> Abbreviate -> fillDBFromFile()) {
			echo 'Se grabaron los datos del archivo en la BD.';
		} else {
			echo 'Ocurrio un error.';
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
				$this -> Session -> setFlash(__('Se ha creado el abreviado'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('El abreviado no se pudo crear. Por favor, intente de nuevo.'), 'crud/error');
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
				$this -> Session -> setFlash(__('Se ha modificado el abreviado.'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('El abreviado no se pudo modificar. Por favor, intente de nuevo.'), 'crud/error');
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
			throw new NotFoundException(__('Abreviado no válido.'));
		}
		if ($this -> Abbreviate -> delete()) {
			$this -> Session -> setFlash(__('El abreviado fue eliminado.'), 'crud/success');
			$this -> redirect(array('action' => 'index'));
		}
		$this -> Session -> setFlash(__('No se eliminó el abreviado.'), 'crud/error');
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
				$this -> Session -> setFlash(__('Se ha creado el abreviado'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('El abreviado no se pudo crear. Por favor, intente de nuevo.'), 'crud/error');
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
				$this -> Session -> setFlash(__('Se ha modificado el abreviado.'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('El abreviado no se pudo modificar. Por favor, intente de nuevo.'), 'crud/error');
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
			throw new NotFoundException(__('Abreviado no válido.'));
		}
		if ($this -> Abbreviate -> delete()) {
			$this -> Session -> setFlash(__('El abreviado fue eliminado.'), 'crud/success');
			$this -> redirect(array('action' => 'index'));
		}
		$this -> Session -> setFlash(__('No se eliminó el abreviado.'), 'crud/error');
		$this -> redirect(array('action' => 'index'));
	}

}
