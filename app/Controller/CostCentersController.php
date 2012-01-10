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
				$this->Session->setFlash(__('The cost center has been saved'),'crud/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The cost center could not be saved. Please, try again.'),'crud/error');
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
				$this->Session->setFlash(__('The cost center has been saved'),'crud/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The cost center could not be saved. Please, try again.'),'crud/error');
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
			throw new NotFoundException(__('Invalid cost center'));
		}
		if ($this->CostCenter->delete()) {
			$this->Session->setFlash(__('Cost center deleted'),'crud/success');
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Cost center was not deleted'),'crud/error');
		$this->redirect(array('action' => 'index'));
	}
/**
 * admin_index method
 *
 * @return void
 */
	public function admin_index() {
		$this->CostCenter->recursive = 0;
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
				$this->Session->setFlash(__('The cost center has been saved'),'crud/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The cost center could not be saved. Please, try again.'),'crud/error');
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
				$this->Session->setFlash(__('The cost center has been saved'),'crud/success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The cost center could not be saved. Please, try again.'),'crud/error');
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
			throw new NotFoundException(__('Invalid cost center'));
		}
		if ($this->CostCenter->delete()) {
			$this->Session->setFlash(__('Cost center deleted'),'crud/success');
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Cost center was not deleted'),'crud/error');
		$this->redirect(array('action' => 'index'));
	}
}
