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
	public function logout() {
		$this -> redirect($this -> Auth -> logout());
	}

	/**
	 * register method
	 *
	 * @return void
	 */
	public function register() {
		if ($this -> request -> is('post')) {
			$this -> User -> create();
			$this -> request -> data['User']['role_id'] = 2;
			$this -> request -> data['User']['is_active'] = true;
			if ($this -> User -> save($this -> request -> data)) {
				$this -> Session -> setFlash(__('The user has been saved'), 'crud/success');
				// Generar el codigo para el correo de registro
				$code = crypt($this -> User -> id, '23()23*$%g4F^aN!^^%');
				$code = urlencode($code);
				// Enviar el correo con el codigo
				$this -> sendRegistrationEmail($this -> request -> data['User']['email'], $code);
				$this -> Session -> setFlash(__('Registration successful, please check your inbox to verify your email.', true));
				// Redireccionar
				$this -> redirect(array('action' => 'validateEmail'));
			} else {
				$this -> Session -> setFlash(__('Registration failed. Please, try again.'), 'crud/error');
			}
		}
	}

	/**
	 * sendRegistrationEmail method
	 *
	 * @return void
	 */
	private function sendRegistrationEmail($email = null, $code = null) {
		/**
		 * Asignar las variables del componente Email
		 */
		if ($email && $code) {
			/**
			 * Crear el objeto CakeEmail y configurar lo necesario
			 */
			$email_handler = new CakeEmail('registration_code');
			$email_handler -> to($email);
			$email_handler -> subject(__('Registration to the site', true) . ' :: ' . Configure::read('site_name'));
			/**
			 * Asignar las variables al template
			 */
			$email_handler -> viewVars(array('code' => $code));
			/**
			 * Enviar el correo
			 */
			$email_handler -> send();
		}

	}

	/**
	 * validateEmail method
	 *
	 * @return void
	 */
	public function validateEmail($code = 'null') {

		if ($this -> request -> is('post')) {
			$code = $this -> request -> data['User']['validation_code'];
		}

		$max_id = $this -> User -> find('first', array('fields' => array('MAX(User.id) as max_id')));
		$max_id = $max_id[0]['max_id'];
		$user = null;

		if ($code != 'null') {
			$code = urldecode($code);
			for ($id_tested = 1; $id_tested <= $max_id; $id_tested += 1) {
				if ($code == crypt($id_tested, '23()23*$%g4F^aN!^^%')) {
					$user = $this -> User -> read(null, $id_tested);
					break;
				} else {
					$user = null;
				}
			}

			if ($user) {
				$user['User']['email_verified'] = true;
				if ($this -> User -> save($user)) {
					$this -> Session -> setFlash(__('Thank you for validating your email', true));
					$this -> redirect(array('controller' => 'users', 'action' => 'login'));
				} else {
					$this -> Session -> setFlash(__('An error ocurred while validating your email, please try again', true));
					$this -> redirect(array('controller' => 'users', 'action' => 'validateEmail'));
				}
			} else {
				$this -> Session -> setFlash(__('Enter a valid code and try again', true));
			}
		} else {
			$this -> Session -> setFlash(__('Enter the given code to verify', true));
		}

	}

	function changePassword($id = null) {
		$this -> layout = "profile";
		if (!$id && empty($this -> data)) {
			$this -> Session -> setFlash(__('Invalid user', true));
			$this -> redirect(array('action' => 'profile'));
		}
		if (!empty($this -> data)) {
			$user = $this -> User -> findById($id);
			if ($user['User']['password'] == $this -> Auth -> password($this -> data['User']['old_password'])) {
				$user['User']['password'] = $this -> Auth -> password($this -> data['User']['new_password']);
				if ($this -> data['User']['new_password'] == $this -> data['User']['confirm_password'] && $this -> User -> save($user)) {
					$this -> Session -> setFlash(__('Se ha actualizado tu password', true));
					$this -> redirect($this -> referer());
				} else {
					$this -> Session -> setFlash(__('No coincide la confirmacion del password', true));
					$this -> redirect($this -> referer());
				}

			} else {
				$this -> Session -> setFlash(__('Su password anterior no es valido', true));
				$this -> redirect($this -> referer());
			}
		}
	}

	function resetPassword() {
		if (isset($this -> data['User']['email']) && !empty($this -> data['User']['email'])) {
			$this -> User -> recursive = 0;
			$user = $this -> User -> findByEmail(trim($this -> data['User']['email']));
			if (!empty($user)) {
				$email = $user['User']['email'];
				$password = $this -> createPassword();
				$user['User']['password'] = $this -> Auth -> password($password);
				if ($this -> User -> save($user)) {
					$this -> sendResetPasswordEmail($email, $email, $password);
					$this -> Session -> setFlash(__("An email has been sent to $email with the new password.", true));
				} else {
					$this -> Session -> setFlash(__('An error occurred in the process. Please try again.', true));
				}
			} else {
				$this -> Session -> setFlash(__('No user with that email registered.', true));
			}
		}
	}

	private function createPassword() {
		$str = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
		$cad = "";
		for ($i = 0; $i < 8; $i++) {
			$cad .= substr($str, rand(0, 62), 1);
		}
		return $cad;
	}

	private function sendResetPasswordEmail($email = null, $username = null, $password = null) {
		/**
		 * Asignar las variables del componente Email
		 */
		if ($email && $username && $password) {
			/**
			 * Crear el objeto CakeEmail y configurar lo necesario
			 */
			$email_handler = new CakeEmail('reset_password');
			$email_handler -> to($email);
			$email_handler -> subject(__('Password reset request ', true) . ' :: ' . Configure::read('site_name'));
			/**
			 * Asignar las variables al template
			 */
			$email_handler -> viewVars(array('username' => $username, 'password' => $password));
			/**
			 * Enviar el correo
			 */
			$email_handler -> send();
		}

	}

	/**
	 * capcha funcionality  method
	 *
	 * @return void
	 */
	public function capchaFuncionality() {
		if (Configure::read('capcha')) {
			$logginAttempts = $this -> Session -> read('loginAttempts');
			$logginAttempts = $logginAttempts ? ($logginAttempts + 1) : 1;
			$this -> Session -> write('loginAttempts', $logginAttempts);
			if ($logginAttempts >= Configure::read('loginAttempts')) {
				// FUNCIONALIDAD CPACHA
			}
		}
		return true;
	}

	/**
	 * capcha generator method
	 *
	 * @return void
	 */
	public function capcha() {

	}

	/**
	 * index method
	 *
	 * @return void
	 */
	public function profile() {
		$this -> User -> recursive = 0;
		$this -> set('users', $this -> paginate());
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
			throw new NotFoundException(__('Invalid user'));
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
		$this -> Acl -> allow($role, 'Users/profile');
		
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
