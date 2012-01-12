<?php
App::uses('AppModel', 'Model');
/**
 * SipDispositivo Model
 *
 * @property Department $Department
 * @property CostCenter $CostCenter
 */
class SipDispositivo extends AppModel {
/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'name';
/**
 * Validation rules
 *
 * @var array
 */
	public $validate = array(
		'name' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				'message' => 'Debe ingresar un nombre',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'context' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				'message' => 'Debe seleccionar un contexto',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'secret' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				'message' => 'Debe ingresar una contraseña',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'nat' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				'message' => 'Debe escoger el uso de NAT',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);

	//The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
		'Department' => array(
			'className' => 'Department',
			'foreignKey' => 'department_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'CostCenter' => array(
			'className' => 'CostCenter',
			'foreignKey' => 'cost_center_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
	
	public function beforeSave() {
		$this -> data['SipDispositivo']['allow'] = 'ulaw;alaw;gsm';
		$this -> data['SipDispositivo']['mailbox'] = $this -> data['SipDispositivo']['name'] . '@default';
		$this -> data['SipDispositivo']['host'] = 'dynamic';
		$this -> data['SipDispositivo']['callerid'] = '';
		$this -> data['SipDispositivo']['username'] = $this -> data['SipDispositivo']['name'];
		$this -> data['SipDispositivo']['ipaddr'] = '0.0.0.0';
		/**
		echo $this -> Form -> hidden('fullcontact', array('value' => 'sip'));
		 * 
		 */
		return true;
	}
	
	public function afterSave($created) {
		if($created) {
			// Que hacer cuando es creado el registro
		} else {
			// Que hacer cuando es actualizado el registro
		}
		exec('sudo /usr/sbin/asterisk -rx "module reload" 2>&1');
	}
	
}
