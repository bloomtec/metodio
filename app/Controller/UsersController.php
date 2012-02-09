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
	}

	public function beforeRender() {
		parent::beforeRender();
		$this -> set('title_for_layout', 'Usuarios');
		if($this->action=='login') {
			$this -> set('title_for_layout', 'Login');
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
		for ($i = 0; $i < count($this -> params['ruta']); $i++) {
			$ruta .= $this -> params['ruta'][$i];
			if ($i != count($this -> params['ruta']) - 1) {
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
		if($this -> Session -> read('Auth.User')) {
			$this -> redirect(array('controller' => 'pages', 'action' => 'display', 'home'));
		}
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
		$conditions = array();
		if (isset($this -> params['named']['query']) && !empty($this -> params['named']['query'])) {
			$conditions = $this -> searchFilter($this -> params['named']['query'], array('username', 'role_id'));
		}
		$this -> paginate = array('conditions' => $conditions, 'order' => array('User.username' => 'ASC'));
		$this -> set('users', $this -> paginate());
	}

	/**
	 * add method
	 *
	 * @return void
	 */
	public function add() {
		if ($this -> request -> is('post')) {
			$this -> User -> create();
			if ($this -> User -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('Se ha creado el usuario.'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('No se puedo crear el usuario. Por favor, intente de nuevo.'), 'crud/error');
			}
		}
		$roles = $this -> User -> Role -> find('list');
		$this -> set(compact('roles'));
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
			throw new NotFoundException(__('Usuario no válido.'));
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
			throw new NotFoundException(__('Usuario no válido.'));
		}
		if ($this -> request -> is('post') || $this -> request -> is('put')) {
			if ($this -> User -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('The user has been saved'), 'crud/success');
				$this -> redirect(array('action' => 'index'));
			} else {
				$this -> Session -> setFlash(__('The user could not be saved. Please, try again.'), 'crud/error');
			}
		} else {
			$this -> request -> data = $this -> User -> read(null, $id);
		}
		$roles = $this -> User -> Role -> find('list');
		$this -> set(compact('roles'));
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
		$this -> User -> id = $id;
		if (!$this -> User -> exists()) {
			throw new NotFoundException(__('Usuario no válido.'));
		}
		if ($this -> User -> delete()) {
			$this -> Session -> setFlash(__('Se eliminó el usuario'), 'crud/success');
			$this -> redirect(array('action' => 'index'));
		}
		$this -> Session -> setFlash(__('No se pudo eliminar el usuario.'), 'crud/error');
		$this -> redirect(array('action' => 'index'));
	}

	function inicializarAcl() {
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
		$this -> User -> query('TRUNCATE TABLE acos;');
		$this -> User -> query('TRUNCATE TABLE aros_acos;');
		//$this -> User -> query('TRUNCATE TABLE users;');
		
		// Agregar Aco's
		$ruta = '/home/usuario/Escritorio/httdocs/metodio';
		exec("$ruta/app/Console/cake -app $ruta/app/ AclExtras.AclExtras aco_sync");
		$ruta = '/var/www/metodio';
		exec("$ruta/app/Console/cake -app $ruta/app/ AclExtras.AclExtras aco_sync");

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
		$user['User']['username'] = 'admin';
		$user['User']['password'] = 'admin';
		$user['User']['role_id'] = 1;
		$user['User']['is_active'] = true;
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
		$this -> Acl -> allow($role, 'Users/verificarAcceso');

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
		$this -> Acl -> allow($role, 'Cdrs/informeGeneral');
		$this -> Acl -> allow($role, 'Cdrs/informeExtension');
		$this -> Acl -> allow($role, 'Cdrs/informeNumeroOrigen');
		$this -> Acl -> allow($role, 'Cdrs/informeNumeroDestino');
		// $this -> Acl -> allow($role, 'Cdrs/informeDepartamento');
		$this -> Acl -> allow($role, 'Cdrs/informeCentroCosto');
		$this -> Acl -> allow($role, 'Cdrs/CSVExport');
		$this -> Acl -> allow($role, 'Cdrs/getCallDateLastRowForExport');
		$this -> Acl -> allow($role, 'Cdrs/resetCallDateLastRowForExport');

		/**
		 * Finished
		 */
		echo 'Usuario Administrativo Y Permisos Inicializados';
		exit ;
	}

}
