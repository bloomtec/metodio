<?php
App::uses('AppController', 'Controller');
/**
 * Departments Controller
 *
 * @property Department $Department
 */
class DepartmentsController extends AppController {


/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Department->recursive = 0;
		$conditions = array();
		if(isset($this->params['named']['query']) && !empty($this->params['named']['query'])) {
			$query = $this->params['named']['query'];
			$conditions['Department.name LIKE'] = "%$query%";
		}
		$this -> paginate = array(
			'conditions' => $conditions,
			'order' => array('Department.name'=>'ASC')
		);
		$this->set('departments', $this->paginate());
	}

/**
 * view method
 *
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		$this->Department->id = $id;
		if (!$this->Department->exists()) {
			throw new NotFoundException(__('Invalid department'));
		}
		$this->set('department', $this->Department->read(null, $id));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Department->create();
			if ($this->Department->save($this->request->data)) {
				$this->Session->setFlash(__('Se ha creado el departamento.'),'crud/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('No se pudo crear el departamento. Por favor, intente de nuevo.'),'crud/error');
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
		$this->Department->id = $id;
		if (!$this->Department->exists()) {
			throw new NotFoundException(__('Invalid department'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Department->save($this->request->data)) {
				$this->Session->setFlash(__('Se ha modificado el departamento.'),'crud/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('No se pudo modificar el departamento. Por favor, intente de nuevo.'),'crud/error');
			}
		} else {
			$this->request->data = $this->Department->read(null, $id);
		}
	}

/**
 * delete method
 *
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		if (!$this->request->is('post')) {
			throw new MethodNotAllowedException();
		}
		$this->Department->id = $id;
		if (!$this->Department->exists()) {
			throw new NotFoundException(__('Invalid department'));
		}
		if ($this->Department->delete()) {
			$this->Session->setFlash(__('Department deleted'),'crud/success');
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Department was not deleted'),'crud/error');
		$this->redirect(array('action' => 'index'));
	}
/**
 * admin_index method
 *
 * @return void
 */
	public function admin_index() {
		$this->Department->recursive = 0;
		$conditions = array();
		if(isset($this->params['named']['query']) && !empty($this->params['named']['query'])) {
			$query = $this->params['named']['query'];
			$conditions['Department.name LIKE'] = "%$query%";
		}
		$this -> paginate = array(
			'conditions' => $conditions,
			'order' => array('Department.name'=>'ASC')
		);
		$this->set('departments', $this->paginate());
	}

/**
 * admin_view method
 *
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		$this->Department->id = $id;
		if (!$this->Department->exists()) {
			throw new NotFoundException(__('Invalid department'));
		}
		$this->set('department', $this->Department->read(null, $id));
	}

/**
 * admin_add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->Department->create();
			if ($this->Department->save($this->request->data)) {
				$this->Session->setFlash(__('Se ha creado el departamento.'),'crud/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('No se pudo crear el departamento. Por favor, intente de nuevo.'),'crud/error');
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
		$this->Department->id = $id;
		if (!$this->Department->exists()) {
			throw new NotFoundException(__('Invalid department'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Department->save($this->request->data)) {
				$this->Session->setFlash(__('Se ha modificado el departamento.'),'crud/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('No se pudo modificar el departamento. Por favor, intente de nuevo.'),'crud/error');
			}
		} else {
			$this->request->data = $this->Department->read(null, $id);
		}
	}

/**
 * admin_delete method
 *
 * @param string $id
 * @return void
 */
	public function admin_delete($id = null) {
		if (!$this->request->is('post')) {
			throw new MethodNotAllowedException();
		}
		$this->Department->id = $id;
		if (!$this->Department->exists()) {
			throw new NotFoundException(__('Invalid department'));
		}
		if ($this->Department->delete()) {
			$this->Session->setFlash(__('Department deleted'),'crud/success');
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Department was not deleted'),'crud/error');
		$this->redirect(array('action' => 'index'));
	}
}
