<?php
App::uses('AppController', 'Controller');
/**
 * Cdrs Controller
 *
 * @property Cdr $Cdr
 */
class CdrsController extends AppController {

	public function reporteGeneral() {}

	public function reporteExtension() {}

	public function reporteNumeroOrigen() {}

	public function reporteNumeroDestino() {}

	public function reporteDepartamento() {
		$this -> loadModel('Department');
		$departments = $this -> Department -> find('list', array('order' => array('Department.name' => 'ASC')));
		$this -> set(compact('departments'));
	}

	public function reporteCentroCosto() {
		$this -> loadModel('CostCenter');
		$costCenters = $this -> CostCenter -> find('list', array('order' => array('CostCenter.name' => 'ASC')));
		$this -> set(compact('costCenters'));
	}
	
	public function parseData() {
		$this -> autoRender = false;
		if(isset($this->data) && !empty($this->data)) {
			$this -> recursive = -1;
			$conditions = array();
			if (isset($this -> data['Cdr']) && !empty($this -> data['Cdr'])) {
				$data = $this -> data['Cdr'];
	
				// Fecha inicial
				if (!empty($data['fecha_inicial'])) {
					$conditions['Cdr.calldate >='] = $data['fecha_inicial'];
				}
	
				// Hora inicial
				$hora_inicial = array('hora' => '0', 'minuto' => '00', 'segundo' => '00', 'usar' => false);
				if (isset($data['hora_inicial']['hora']['hour']) && !empty($data['hora_inicial']['hora']['hour'])) {
					$hora_inicial['hora'] = $data['hora_inicial']['hora']['hour'];
					$hora_inicial['usar'] = true;
				}
				if (isset($data['hora_inicial']['minuto']['min']) && !empty($data['hora_inicial']['minuto']['min'])) {
					$hora_inicial['minuto'] = $data['hora_inicial']['minuto']['min'];
					$hora_inicial['usar'] = true;
				}
				if (isset($data['hora_inicial']['segundo']['min']) && !empty($data['hora_inicial']['segundo']['min'])) {
					$hora_inicial['segundo'] = $data['hora_inicial']['segundo']['min'];
					$hora_inicial['usar'] = true;
				}
				if ($hora_inicial['usar']) {
					if (isset($conditions['Cdr.calldate >='])) {
						$conditions['Cdr.calldate >='] .= ' ' . $hora_inicial['hora'] . ':' . $hora_inicial['minuto'] . ':' . $hora_inicial['segundo'];
					} else {
						$conditions['Cdr.calldate >='] = $hora_inicial['hora'] . ':' . $hora_inicial['minuto'] . ':' . $hora_inicial['segundo'];
					}
				}
	
				// Fecha final
				if (!empty($data['fecha_final'])) {
					$conditions['Cdr.calldate <='] = $data['fecha_final'];
				}
				// Hora final
				$hora_final = array('hora' => '0', 'minuto' => '00', 'segundo' => '00', 'usar' => false);
				if (isset($data['hora_final']['hora']['hour']) && !empty($data['hora_final']['hora']['hour'])) {
					$hora_final['hora'] = $data['hora_final']['hora']['hour'];
					$hora_final['usar'] = true;
				}
				if (isset($data['hora_final']['minuto']['min']) && !empty($data['hora_final']['minuto']['min'])) {
					$hora_final['minuto'] = $data['hora_final']['minuto']['min'];
					$hora_final['usar'] = true;
				}
				if (isset($data['hora_final']['segundo']['min']) && !empty($data['hora_final']['segundo']['min'])) {
					$hora_final['segundo'] = $data['hora_final']['segundo']['min'];
					$hora_final['usar'] = true;
				}
				if ($hora_final['usar']) {
					if (isset($conditions['Cdr.calldate <='])) {
						$conditions['Cdr.calldate <='] .= ' ' . $hora_final['hora'] . ':' . $hora_final['minuto'] . ':' . $hora_final['segundo'];
					} else {
						$conditions['Cdr.calldate <='] = $hora_final['hora'] . ':' . $hora_final['minuto'] . ':' . $hora_final['segundo'];
					}
				}
	
				// Extensión
				if (isset($data['extension']) && !empty($data['extension'])) {
					$conditions['Cdr.src'] = $data['extension'];
				}
				if (isset($data['origen']) && !empty($data['origen'])) {
					$conditions['Cdr.src'] = $data['origen'];
				}
				if (isset($data['destino']) && !empty($data['destino'])) {
					$conditions['Cdr.dst'] = $data['destino'];
				}
				if (isset($data['departamento']) && !empty($data['departamento'])) {
					$this -> loadModel('SipDispositivo');
					$extensions = $this -> SipDispositivo -> find('list', array('conditions' => array('SipDispositivo.department_id' => $data['departamento']), 'fields' => array('SipDispositivo.name')));
					$conditions['Cdr.src'] = $extensions;
				}
				if (isset($data['centro']) && !empty($data['centro'])) {
					$this -> loadModel('SipDispositivo');
					$extensions = $this -> SipDispositivo -> find('list', array('conditions' => array('SipDispositivo.cost_center_id' => $data['centro']), 'fields' => array('SipDispositivo.name')));
					$conditions['Cdr.src'] = $extensions;
				}
			}
			$this -> redirect($redirect);
		} else {
			echo 'sin datos';
		}
	}

	public function reporte() {
		//$this -> paginate = array('conditions' => $conditions, 'order' => array('Cdr.calldate' => 'ASC'));
		$cdrs = $this -> paginate();
		$this -> set('cdrs', $cdrs);
	}

}
