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
				$this -> Session -> setFlash(__('The sip dispositivo has been saved'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('The sip dispositivo could not be saved. Please, try again.'), 'crud/error');
			}
		}
		$departments = $this -> SipDispositivo -> Department -> find('list');
		$costCenters = $this -> SipDispositivo -> CostCenter -> find('list');
		$this -> set(compact('departments', 'costCenters'));
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
				$this -> Session -> setFlash(__('The sip dispositivo has been saved'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('The sip dispositivo could not be saved. Please, try again.'), 'crud/error');
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
			throw new NotFoundException(__('Invalid sip dispositivo'));
		}
		if ($this -> SipDispositivo -> delete()) {
			$this -> Session -> setFlash(__('Sip dispositivo deleted'), 'crud/success');
			$this -> redirect(array('action' => 'index'));
		}
		$this -> Session -> setFlash(__('Sip dispositivo was not deleted'), 'crud/error');
		$this -> redirect(array('action' => 'index'));
	}

	/**
	 * admin_index method
	 *
	 * @return void
	 */
	public function admin_index() {
		$this -> SipDispositivo -> recursive = 0;
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
				$this -> Session -> setFlash(__('The sip dispositivo has been saved'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('The sip dispositivo could not be saved. Please, try again.'), 'crud/error');
			}
		}
		$departments = $this -> SipDispositivo -> Department -> find('list');
		$costCenters = $this -> SipDispositivo -> CostCenter -> find('list');
		$this -> loadModel('Privilege');
		$privileges_tmp = $this -> Privilege -> find('list');
		$privileges = array();
		foreach ($privileges_tmp as $key => $value) {
			$privileges[$value]=$value;
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
				$this -> Session -> setFlash(__('The sip dispositivo has been saved'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('The sip dispositivo could not be saved. Please, try again.'), 'crud/error');
			}
		} else {
			$this -> request -> data = $this -> SipDispositivo -> read(null, $id);
		}
		$departments = $this -> SipDispositivo -> Department -> find('list');
		$costCenters = $this -> SipDispositivo -> CostCenter -> find('list');
		$this -> set(compact('departments', 'costCenters'));
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
			throw new NotFoundException(__('Invalid sip dispositivo'));
		}
		if ($this -> SipDispositivo -> delete()) {
			$this -> Session -> setFlash(__('Sip dispositivo deleted'), 'crud/success');
			$this -> redirect(array('action' => 'index'));
		}
		$this -> Session -> setFlash(__('Sip dispositivo was not deleted'), 'crud/error');
		$this -> redirect(array('action' => 'index'));
	}

}
