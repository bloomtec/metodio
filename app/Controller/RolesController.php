<?php
App::uses('AppController', 'Controller');
/**
 * Roles Controller
 *
 * @property Role $Role
 */
class RolesController extends AppController {

	public function initAcl() {
		$this->autoRender=false;
		
		$aro = &$this -> Acl -> Aro;

		// Here's all of our group info in an array we can iterate through
		$roles = array(
			0 => array('foreign_key'=>1, 'model' => 'Role', 'alias' => 'administradores'),
			1 => array('foreign_key'=>2, 'model' => 'Role', 'alias' => 'usuarios')
		);

		// Iterate and create ARO groups
		foreach ($roles as $data) {
			// Remember to call create() when saving in loops...
			$aro -> create();

			// Save data
			$aro -> save($data);
		}
		
	}

	/**
	 * index method
	 *
	 * @return void
	 */
	public function index() {
		$this -> Role -> recursive = 0;
		$this -> set('roles', $this -> paginate());
	}

	/**
	 * view method
	 *
	 * @param string $id
	 * @return void
	 */
	public function view($id = null) {
		$this -> Role -> id = $id;
		if (!$this -> Role -> exists()) {
			throw new NotFoundException(__('Invalid role'));
		}
		$this -> set('role', $this -> Role -> read(null, $id));
	}

	/**
	 * add method
	 *
	 * @return void
	 */
	public function add() {
		if ($this -> request -> is('post')) {
			$this -> Role -> create();
			if ($this -> Role -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('The role has been saved'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('The role could not be saved. Please, try again.'), 'crud/error');
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
		$this -> Role -> id = $id;
		if (!$this -> Role -> exists()) {
			throw new NotFoundException(__('Invalid role'));
		}
		if ($this -> request -> is('post') || $this -> request -> is('put')) {
			if ($this -> Role -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('The role has been saved'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('The role could not be saved. Please, try again.'), 'crud/error');
			}
		} else {
			$this -> request -> data = $this -> Role -> read(null, $id);
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
		$this -> Role -> id = $id;
		if (!$this -> Role -> exists()) {
			throw new NotFoundException(__('Invalid role'));
		}
		if ($this -> Role -> delete()) {
			$this -> Session -> setFlash(__('Role deleted'), 'crud/success');
			$this -> redirect(array('action' => 'index'));
		}
		$this -> Session -> setFlash(__('Role was not deleted'), 'crud/error');
		$this -> redirect(array('action' => 'index'));
	}

	/**
	 * admin_index method
	 *
	 * @return void
	 */
	public function admin_index() {
		$this -> Role -> recursive = 0;
		$this -> set('roles', $this -> paginate());
	}

	/**
	 * admin_view method
	 *
	 * @param string $id
	 * @return void
	 */
	public function admin_view($id = null) {
		$this -> Role -> id = $id;
		if (!$this -> Role -> exists()) {
			throw new NotFoundException(__('Invalid role'));
		}
		$this -> set('role', $this -> Role -> read(null, $id));
	}

	/**
	 * admin_add method
	 *
	 * @return void
	 */
	public function admin_add() {
		if ($this -> request -> is('post')) {
			$this -> Role -> create();
			if ($this -> Role -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('The role has been saved'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('The role could not be saved. Please, try again.'), 'crud/error');
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
		$this -> Role -> id = $id;
		if (!$this -> Role -> exists()) {
			throw new NotFoundException(__('Invalid role'));
		}
		if ($this -> request -> is('post') || $this -> request -> is('put')) {
			if ($this -> Role -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('The role has been saved'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('The role could not be saved. Please, try again.'), 'crud/error');
			}
		} else {
			$this -> request -> data = $this -> Role -> read(null, $id);
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
		$this -> Role -> id = $id;
		if (!$this -> Role -> exists()) {
			throw new NotFoundException(__('Invalid role'));
		}
		if ($this -> Role -> delete()) {
			$this -> Session -> setFlash(__('Role deleted'), 'crud/success');
			$this -> redirect(array('action' => 'index'));
		}
		$this -> Session -> setFlash(__('Role was not deleted'), 'crud/error');
		$this -> redirect(array('action' => 'index'));
	}

}
