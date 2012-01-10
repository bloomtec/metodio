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
	
}
