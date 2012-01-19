<?php
App::uses('AppController', 'Controller');
/**
 * SipDispositivos Controller
 *
 * @property SipDispositivo $SipDispositivo
 */
class SipDispositivosController extends AppController {

	/**
	 * index method
	 *
	 * @return void
	 */
	public function index() {
		$this -> SipDispositivo -> recursive = 0;
		$conditions = array();
		if (isset($this -> params['named']['query']) && !empty($this -> params['named']['query'])) {
			$conditions = $this -> searchFilter($this -> params['named']['query'], array('name', 'host', 'nat', 'callerid', 'context', 'department_id', 'cost_center_id'));
		}
		$this -> paginate = array('conditions' => $conditions, 'order' => array('SipDispositivo.name' => 'ASC'));
		$this -> set('sipDispositivos', $this -> paginate());
	}

	/**
	 * view method
	 *
	 * @param string $id
	 * @return void
	 */
	public function view($id = null) {
		$this -> SipDispositivo -> id = $id;
		if (!$this -> SipDispositivo -> exists()) {
			throw new NotFoundException(__('Invalid sip dispositivo'));
		}
		$this -> set('sipDispositivo', $this -> SipDispositivo -> read(null, $id));
	}

	/**
	 * add method
	 *
	 * @return void
	 */
	public function add() {
		if ($this -> request -> is('post')) {
			$this -> SipDispositivo -> create();
			if ($this -> SipDispositivo -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('Se ha creado la extensión'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('La extensión no se pudo crear. Por favor, intente de nuevo.'), 'crud/error');
			}
		}
		$departments = $this -> SipDispositivo -> Department -> find('list');
		$costCenters = $this -> SipDispositivo -> CostCenter -> find('list');
		$this -> loadModel('Privilege');
		$privileges_tmp = $this -> Privilege -> find('list');
		$privileges = array();
		foreach ($privileges_tmp as $key => $value) {
			$privileges[$value] = $value;
		}
		$this -> set(compact('departments', 'costCenters', 'privileges'));
	}

	/**
	 * edit method
	 *
	 * @param string $id
	 * @return void
	 */
	public function edit($id = null) {
		$this -> SipDispositivo -> id = $id;
		if (!$this -> SipDispositivo -> exists()) {
			throw new NotFoundException(__('Invalid sip dispositivo'));
		}
		if ($this -> request -> is('post') || $this -> request -> is('put')) {
			if ($this -> SipDispositivo -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('Se ha modificado la extensión'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('La extensión no se pudo modificar. Por favor, intente de nuevo.'), 'crud/error');
			}
		} else {
			$this -> request -> data = $this -> SipDispositivo -> read(null, $id);
		}
		$departments = $this -> SipDispositivo -> Department -> find('list');
		$costCenters = $this -> SipDispositivo -> CostCenter -> find('list');
		$this -> set(compact('departments', 'costCenters'));
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
		$this -> SipDispositivo -> id = $id;
		if (!$this -> SipDispositivo -> exists()) {
			throw new NotFoundException(__('Extensión no válida.'));
		}
		if ($this -> SipDispositivo -> delete()) {
			$this -> Session -> setFlash(__('La extensión fue eliminada.'), 'crud/success');
			$this -> redirect(array('action' => 'index'));
		}
		$this -> Session -> setFlash(__('No se eliminó la extensión.'), 'crud/error');
		$this -> redirect(array('action' => 'index'));
	}

	/**
	 * admin_index method
	 *
	 * @return void
	 */
	public function admin_index() {
		$this -> SipDispositivo -> recursive = 0;
		$conditions = array();
		if (isset($this -> params['named']['query']) && !empty($this -> params['named']['query'])) {
			$conditions = $this -> searchFilter($this -> params['named']['query'], array('name', 'host', 'nat', 'callerid', 'context', 'department_id', 'cost_center_id'));
		}
		$this -> paginate = array('conditions' => $conditions, 'order' => array('SipDispositivo.name' => 'ASC'));
		$this -> set('sipDispositivos', $this -> paginate());
	}

	/**
	 * admin_view method
	 *
	 * @param string $id
	 * @return void
	 */
	public function admin_view($id = null) {
		$this -> SipDispositivo -> id = $id;
		if (!$this -> SipDispositivo -> exists()) {
			throw new NotFoundException(__('Invalid sip dispositivo'));
		}
		$this -> set('sipDispositivo', $this -> SipDispositivo -> read(null, $id));
	}

	/**
	 * admin_add method
	 *
	 * @return void
	 */
	public function admin_add() {
		if ($this -> request -> is('post')) {
			$this -> SipDispositivo -> create();
			if ($this -> SipDispositivo -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('Se ha creado la extensión'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('La extensión no se pudo crear. Por favor, intente de nuevo.'), 'crud/error');
			}
		}
		$departments = $this -> SipDispositivo -> Department -> find('list');
		$costCenters = $this -> SipDispositivo -> CostCenter -> find('list');
		$this -> loadModel('Privilege');
		$privileges_tmp = $this -> Privilege -> find('list');
		$privileges = array();
		foreach ($privileges_tmp as $key => $value) {
			$privileges[$value] = $value;
		}
		$this -> set(compact('departments', 'costCenters', 'privileges'));
	}

	/**
	 * admin_edit method
	 *
	 * @param string $id
	 * @return void
	 */
	public function admin_edit($id = null) {
		$this -> SipDispositivo -> id = $id;
		if (!$this -> SipDispositivo -> exists()) {
			throw new NotFoundException(__('Invalid sip dispositivo'));
		}
		if ($this -> request -> is('post') || $this -> request -> is('put')) {
			if ($this -> SipDispositivo -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('Se ha modificado la extensión'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('La extensión no se pudo modificar. Por favor, intente de nuevo.'), 'crud/error');
			}
		} else {
			$this -> request -> data = $this -> SipDispositivo -> read(null, $id);
		}
		$departments = $this -> SipDispositivo -> Department -> find('list');
		$costCenters = $this -> SipDispositivo -> CostCenter -> find('list');
		$this -> loadModel('Privilege');
		$privileges_tmp = $this -> Privilege -> find('list');
		$privileges = array();
		foreach ($privileges_tmp as $key => $value) {
			$privileges[$value] = $value;
		}
		$this -> set(compact('departments', 'costCenters', 'privileges'));
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
		$this -> SipDispositivo -> id = $id;
		if (!$this -> SipDispositivo -> exists()) {
			throw new NotFoundException(__('Extensión no válida.'));
		}
		if ($this -> SipDispositivo -> delete()) {
			$this -> Session -> setFlash(__('La extensión fue eliminada.'), 'crud/success');
			$this -> redirect(array('action' => 'index'));
		}
		$this -> Session -> setFlash(__('No se eliminó la extensión.'), 'crud/error');
		$this -> redirect(array('action' => 'index'));
	}

}
