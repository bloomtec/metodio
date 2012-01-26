<?php
App::uses('AppController', 'Controller');
/**
 * Departments Controller
 *
 * @property Department $Department
 */
class DepartmentsController extends AppController {

	public function beforeRender() {
		$this -> set('title_for_layout', 'Departamentos');
	}

	/**
	 * index method
	 *
	 * @return void
	 */
	public function index() {
		$this -> Department -> recursive = 0;
		$conditions = array();
		if (isset($this -> params['named']['query']) && !empty($this -> params['named']['query'])) {
			$conditions = $this -> searchFilter($this -> params['named']['query'], array('name', 'description'));
		}
		$this -> paginate = array('conditions' => $conditions, 'order' => array('Department.name' => 'ASC'));
		$this -> set('departments', $this -> paginate());
	}

	/**
	 * view method
	 *
	 * @param string $id
	 * @return void
	 */
	public function view($id = null) {
		$this -> Department -> id = $id;
		if (!$this -> Department -> exists()) {
			throw new NotFoundException(__('Invalid department'));
		}
		$this -> set('department', $this -> Department -> read(null, $id));
	}

	/**
	 * add method
	 *
	 * @return void
	 */
	public function add() {
		if ($this -> request -> is('post')) {
			$this -> Department -> create();
			if ($this -> Department -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('Se ha creado el departamento.'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('No se pudo crear el departamento. Por favor, intente de nuevo.'), 'crud/error');
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
		$this -> Department -> id = $id;
		if (!$this -> Department -> exists()) {
			throw new NotFoundException(__('Invalid department'));
		}
		if ($this -> request -> is('post') || $this -> request -> is('put')) {
			if ($this -> Department -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('Se ha modificado el departamento.'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('No se pudo modificar el departamento. Por favor, intente de nuevo.'), 'crud/error');
			}
		} else {
			$this -> request -> data = $this -> Department -> read(null, $id);
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
		$this -> Department -> id = $id;
		if (!$this -> Department -> exists()) {
			throw new NotFoundException(__('Departamento no válido.'));
		}
		if ($this -> Department -> delete()) {
			$this -> Session -> setFlash(__('El departamento fue eliminado.'), 'crud/success');
			$this -> redirect(array('action' => 'index'));
		}
		$this -> Session -> setFlash(__('No se eliminó el departamento.'), 'crud/error');
		$this -> redirect(array('action' => 'index'));
	}

}
