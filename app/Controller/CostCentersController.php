<?php
App::uses('AppController', 'Controller');
/**
 * CostCenters Controller
 *
 * @property CostCenter $CostCenter
 */
class CostCentersController extends AppController {


/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->CostCenter->recursive = 0;
		$conditions = array();
		if(isset($this->params['named']['query']) && !empty($this->params['named']['query'])) {
			$query = $this->params['named']['query'];
			$conditions['CostCenter.name LIKE'] = "%$query%";
		}
		$this -> paginate = array(
			'conditions' => $conditions,
			'order' => array('CostCenter.name'=>'ASC')
		);
		$this->set('costCenters', $this->paginate());
	}

/**
 * view method
 *
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		$this->CostCenter->id = $id;
		if (!$this->CostCenter->exists()) {
			throw new NotFoundException(__('Invalid cost center'));
		}
		$this->set('costCenter', $this->CostCenter->read(null, $id));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->CostCenter->create();
			if ($this->CostCenter->save($this->request->data)) {
				$this->Session->setFlash(__('Se ha creado el centro de costo.'),'crud/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('No se pudo crear el centro de costo. Por favor, intente de nuevo.'),'crud/error');
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
		$this->CostCenter->id = $id;
		if (!$this->CostCenter->exists()) {
			throw new NotFoundException(__('Invalid cost center'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->CostCenter->save($this->request->data)) {
				$this->Session->setFlash(__('Se ha modificado el centro de costo.'),'crud/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('No se pudo modificar el cenrto de costo. Por favor, intente de nuevo.'),'crud/error');
			}
		} else {
			$this->request->data = $this->CostCenter->read(null, $id);
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
		$this->CostCenter->id = $id;
		if (!$this->CostCenter->exists()) {
			throw new NotFoundException(__('Centro de costo no válido.'));
		}
		if ($this->CostCenter->delete()) {
			$this->Session->setFlash(__('El centro de costo fue eliminado.'),'crud/success');
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('No se eliminó el Centro De Costo.'),'crud/error');
		$this->redirect(array('action' => 'index'));
	}
/**
 * admin_index method
 *
 * @return void
 */
	public function admin_index() {
		$this->CostCenter->recursive = 0;
		$conditions = array();
		if(isset($this->params['named']['query']) && !empty($this->params['named']['query'])) {
			$query = $this->params['named']['query'];
			$conditions['CostCenter.name LIKE'] = "%$query%";
		}
		$this -> paginate = array(
			'conditions' => $conditions,
			'order' => array('CostCenter.name'=>'ASC')
		);
		$this->set('costCenters', $this->paginate());
	}

/**
 * admin_view method
 *
 * @param string $id
 * @return void
 */
	public function admin_view($id = null) {
		$this->CostCenter->id = $id;
		if (!$this->CostCenter->exists()) {
			throw new NotFoundException(__('Invalid cost center'));
		}
		$this->set('costCenter', $this->CostCenter->read(null, $id));
	}

/**
 * admin_add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->CostCenter->create();
			if ($this->CostCenter->save($this->request->data)) {
				$this->Session->setFlash(__('Se ha creado el centro de costo.'),'crud/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('No se pudo crear el centro de costo. Por favor, intente de nuevo.'),'crud/error');
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
		$this->CostCenter->id = $id;
		if (!$this->CostCenter->exists()) {
			throw new NotFoundException(__('Invalid cost center'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->CostCenter->save($this->request->data)) {
				$this->Session->setFlash(__('Se ha modificado el centro de costo.'),'crud/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('No se pudo modificar el cenrto de costo. Por favor, intente de nuevo.'),'crud/error');
			}
		} else {
			$this->request->data = $this->CostCenter->read(null, $id);
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
		$this->CostCenter->id = $id;
		if (!$this->CostCenter->exists()) {
			throw new NotFoundException(__('Centro de costo no válido.'));
		}
		if ($this->CostCenter->delete()) {
			$this->Session->setFlash(__('El centro de costo fue eliminado.'),'crud/success');
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('No se eliminó el Centro De Costo.'),'crud/error');
		$this->redirect(array('action' => 'index'));
	}
}
