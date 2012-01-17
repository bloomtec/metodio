<?php
App::uses('AppController', 'Controller');
/**
 * Users Controller
 *
 * @property User $User
 */
class UsersController extends AppController {

	public function beforeFilter() {
		parent::beforeFilter();
		$this -> Auth -> allow('initAcl', 'verificarAcceso', 'userRedirect');
	}
	
	public function userRedirect() {
		$role_id = $this -> Session -> read('Auth.User.role_id');
		if($role_id == 1) {
			$this -> redirect(array('controller' => 'SipDispositivos', 'action'=>'index', 'admin'=>true));
		} else {
			$this -> redirect(array('controller' => 'SipDispositivos', 'action'=>'index'));
		}
	}

	public function verificarAcceso() {
		$role = (int)$this -> Session -> read('Auth.User.role_id');
		if ($role === 1) {
			$role = 'administradores';
		} elseif ($role === 2) {
			$role = 'usuarios';
		} else {
			$role = 'anonimo';
		}
		
		// Armar la ruta
		$ruta = '';
		for ($i=0; $i < count($this->params['ruta']); $i++) { 
			$ruta .= $this->params['ruta'][$i];
			if($i != count($this->params['ruta']) - 1) {
				$ruta .= '/';
			}
		}
		return $this -> Acl -> check($role, $ruta);
	}

	/**
	 * login method
	 *
	 * @return void
	 */
	public function login() {
		$this -> layout = "login";
		if ($this -> request -> is('ajax')) {
			if ($this -> Auth -> login()) {
				$this -> User -> recursive = -1;
				$user = $this -> User -> read(null, $this -> Auth -> user('id'));
				$user['success'] = true;
				echo json_encode($user);
			} else {
				$response['message'] = __('Usuario o contraseña incorrectos.', true);
				$response['success'] = false;
				echo json_encode($response);
			}
			$this -> autoRender = false;
			exit(0);
		} elseif ($this -> request -> is('post')) {
			if ($this -> Auth -> login()) {
				return $this -> redirect($this -> Auth -> redirect());
			} else {
				$this -> Session -> setFlash(__('Usuario o contraseña incorrectos.'), 'default', array(), 'auth');
			}
		}
	}

	/**
	 * logout method
	 *
	 * @return void
	 */
	public function logout() {
		$this -> redirect($this -> Auth -> logout());
	}
	
	/**
	 * index method
	 *
	 * @return void
	 */
	public function index() {
		$this -> User -> recursive = 0;
		$this -> set('users', $this -> paginate());
	}

	/**
	 * view method
	 *
	 * @param string $id
	 * @return void
	 */
	public function view($id = null) {
		$this -> User -> id = $id;
		if (!$this -> User -> exists()) {
			throw new NotFoundException(__('Invalid user'));
		}
		$this -> set('user', $this -> User -> read(null, $id));
	}

	/**
	 * edit method
	 *
	 * @param string $id
	 * @return void
	 */
	public function edit($id = null) {
		$this -> User -> id = $id;
		if (!$this -> User -> exists()) {
			throw new NotFoundException(__('Invalid user'));
		}
		if ($this -> request -> is('post') || $this -> request -> is('put')) {
			if ($this -> User -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('The user has been saved'));
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('The user could not be saved. Please, try again.'));
			}
		} else {
			$this -> request -> data = $this -> User -> read(null, $id);
		}
		$roles = $this -> User -> Role -> find('list');
		$this -> set(compact('roles'));
	}

	/**
	 * admin_login method
	 *
	 * @return void
	 */
	public function admin_login() {
		$this -> layout = "ez/login";
		if ($this -> request -> is('ajax')) {
			if ($this -> Auth -> login()) {
				$this -> User -> recursive = -1;
				$user = $this -> User -> read(null, $this -> Auth -> user('id'));
				$user['success'] = true;
				echo json_encode($user);
			} else {
				$response['message'] = __('Username or password is incorrect', true);
				$response['success'] = false;
				$this -> capchaFuncionality();
				echo json_encode($response);
			}
			$this -> autoRender = false;
			exit(0);
		} elseif ($this -> request -> is('post')) {
			if ($this -> Auth -> login()) {
				return $this -> redirect($this -> Auth -> redirect());
			} else {
				$this -> capchaFuncionality();
				$this -> Session -> setFlash(__('Username or password is incorrect'), 'default', array(), 'auth');
			}
		}
	}

	/**
	 * logout method
	 *
	 * @return void
	 */
	public function admin_logout() {
		$this -> redirect($this -> Auth -> logout());
	}

	/**
	 * admin_index method
	 *
	 * @return void
	 */
	public function admin_index() {
		$this -> User -> recursive = 0;
		$this -> set('users', $this -> paginate());
	}

	/**
	 * admin_view method
	 *
	 * @param string $id
	 * @return void
	 */
	public function admin_view($id = null) {
		$this -> User -> id = $id;
		if (!$this -> User -> exists()) {
			throw new NotFoundException(__('Invalid user'));
		}
		$this -> set('user', $this -> User -> read(null, $id));
	}

	/**
	 * admin_add method
	 *
	 * @return void
	 */
	public function admin_add() {
		if ($this -> request -> is('post')) {
			$this -> User -> create();
			if ($this -> User -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('Se ha creado el usuario.'));
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('No se puedo crear el usuario. Por favor, intente de nuevo.'));
			}
		}
		$roles = $this -> User -> Role -> find('list');
		$this -> set(compact('roles'));
	}

	/**
	 * admin_edit method
	 *
	 * @param string $id
	 * @return void
	 */
	public function admin_edit($id = null) {
		$this -> User -> id = $id;
		if (!$this -> User -> exists()) {
			throw new NotFoundException(__('Invalid user'));
		}
		if ($this -> request -> is('post') || $this -> request -> is('put')) {
			if(isset($this -> request -> data['User']['new_password']) && !empty($this -> request -> data['User']['new_password'])) {
				$this -> request -> data['User']['password'] = $this -> request -> data['User']['new_password'];
			} 
			if ($this -> User -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('Se modificó el usuario.'));
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('No se pudo modificar el usuario. Por favor, intente de nuevo.'));
			}
		} else {
			$this -> request -> data = $this -> User -> read(null, $id);
		}
		$roles = $this -> User -> Role -> find('list');
		$this -> set(compact('roles'));
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
		$this -> User -> id = $id;
		if (!$this -> User -> exists()) {
			throw new NotFoundException(__('Usuario no válido.'));
		}
		if ($this -> User -> delete()) {
			$this -> Session -> setFlash(__('Se eliminó el usuario'));
			$this -> redirect(array('action' => 'index'));
		}
		$this -> Session -> setFlash(__('No se pudo eliminar el usuario.'));
		$this -> redirect(array('action' => 'index'));
	}

	function initAcl() {
		$this -> autoRender = false;

		/**
		 * Agregar Aco's
		 */

		// Correr shell de acl_extras
		// ./Console/cake AclExtras.AclExtras aco_sync

		/**
		 * Empty tables
		 */
		$this -> User -> query('TRUNCATE TABLE aros;');
		//$this -> User -> query('TRUNCATE TABLE acos;');
		$this -> User -> query('TRUNCATE TABLE aros_acos;');
		$this -> User -> query('TRUNCATE TABLE users;');

		/**
		 * Agregar Aro's
		 */
		$aro = &$this -> Acl -> Aro;

		// Here's all of our group info in an array we can iterate through
		$roles = array(0 => array('foreign_key' => 1, 'model' => 'Role', 'alias' => 'administradores'), 1 => array('foreign_key' => 2, 'model' => 'Role', 'alias' => 'usuarios'));

		// Iterate and create ARO groups
		foreach ($roles as $data) {
			// Remember to call create() when saving in loops...
			$aro -> create();

			// Save data
			$aro -> save($data);
		}

		/**
		 * Añadir el usuario admin
		 */
		$this -> User -> create();
		$user = array();
		$user['User']['email'] = 'admin@bloomweb.co';
		$user['User']['password'] = 'admin';
		$user['User']['role_id'] = 1;
		$user['User']['is_active'] = true;
		$user['User']['email_verified'] = true;
		$this -> User -> save($user);

		/**
		 * Añadir un usuario
		 */
		$this -> User -> create();
		$user = array();
		$user['User']['email'] = 'user@bloomweb.co';
		$user['User']['password'] = 'user';
		$user['User']['role_id'] = 2;
		$user['User']['is_active'] = true;
		$user['User']['email_verified'] = true;
		$this -> User -> save($user);

		/**
		 * Permisos
		 */
		$role = &$this -> User -> Role;
		
		// Permisos para administradores
		$role -> id = 1;
		
		// Se permite acceso total
		$this -> Acl -> allow($role, 'controllers');
		
		// Permisos para usuarios
		$role -> id = 2;
		
		// Módulo usuarios
		$this -> Acl -> deny($role, 'controllers');
		$this -> Acl -> allow($role, 'Users/logout');
		
		// Módulo extensiones
		$this -> Acl -> allow($role, 'SipDispositivos/index');
		$this -> Acl -> allow($role, 'SipDispositivos/view');
		
		// Módulo centros de costos
		$this -> Acl -> allow($role, 'CostCenters/index');
		$this -> Acl -> allow($role, 'CostCenters/view');
		
		// Módulo departamentos
		$this -> Acl -> allow($role, 'Departments/index');
		$this -> Acl -> allow($role, 'Departments/view');
		// Módulo abreviados
		$this -> Acl -> allow($role, 'Abbreviates/index');
		$this -> Acl -> allow($role, 'Abbreviates/view');
		
		// Módulo informes
		$this -> Acl -> allow($role, 'Cdrs/parseData');
		$this -> Acl -> allow($role, 'Cdrs/reporte');
		$this -> Acl -> allow($role, 'Cdrs/reporteGeneral');
		$this -> Acl -> allow($role, 'Cdrs/reporteExtension');
		$this -> Acl -> allow($role, 'Cdrs/reporteNumeroOrigen');
		$this -> Acl -> allow($role, 'Cdrs/reporteNumeroDestino');
		$this -> Acl -> allow($role, 'Cdrs/reporteDepartamento');
		$this -> Acl -> allow($role, 'Cdrs/reporteCentroCosto');
				
		/**
		 * Finished
		 */
		echo 'Permisos inicializados';
		exit ;
	}

}
