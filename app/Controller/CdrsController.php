<?php
App::uses('AppController', 'Controller');
/**
 * Cdrs Controller
 *
 * @property Cdr $Cdr
 */
class CdrsController extends AppController {

	public function reporteGeneral() {

	}

	public function reporteExtension() {

	}

	public function reporteNumeroOrigen() {

	}

	public function reporteNumeroDestino() {

	}
	
	public function reporteDepartamento() {
		
	}
	
	public function reporteCentroCosto() {
		
	}

	public function reporte() {
		$this -> recursive = -1;
		$conditions = array();
		if (isset($this -> data['Cdr']) && !empty($this -> data['Cdr'])) {
			$data = $this -> data['Cdr'];
			// Condiciones reporte general
			$conditions['Cdr.calldate >='] = $data['fecha_inicial'] . ' ' . $data['hora_inicial'];
			$conditions['Cdr.calldate <='] = $data['fecha_final'] . ' ' . $data['hora_final'];
			if(isset($data['extension'])) {
				$conditions['Cdr.src'] = $data['extension'];
			}
			if(isset($data['origen'])) {
				$conditions['Cdr.src'] = $data['origen'];
			}
			if(isset($data['destino'])) {
				$conditions['Cdr.dst'] = $data['destino'];
			}
		}
		$this -> paginate = array('conditions' => $conditions, 'order' => array('Cdr.calldate' => 'ASC'));
		$cdrs = $this -> paginate();
		$this -> set('cdrs', $cdrs);
	}

}
