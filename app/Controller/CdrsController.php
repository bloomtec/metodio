<?php
App::uses('AppController', 'Controller');
/**
 * Cdrs Controller
 *
 * @property Cdr $Cdr
 */
class CdrsController extends AppController {
	public function getDates(){
		$ayer=explode('.', date('Y.m.d',strtotime('yesterday')));
		$hoy= explode('.', date('Y.m.d.h.i.s')) ;
		$this -> set(compact('ayer','hoy'));
	}
	public function reporteGeneral() {
		$this -> getDates();
	}

	public function reporteExtension() {
		$this -> getDates();
	}

	public function reporteNumeroOrigen() {
		$this -> getDates();
	}

	public function reporteNumeroDestino() {
		$this -> getDates();
	}

	public function reporteDepartamento() {
		$this -> loadModel('Department');
		$departments = $this -> Department -> find('list', array('order' => array('Department.name' => 'ASC')));
		$this -> set(compact('departments'));
		$this -> getDates();
	}

	public function reporteCentroCosto() {
		$this -> loadModel('CostCenter');
		$costCenters = $this -> CostCenter -> find('list', array('order' => array('CostCenter.name' => 'ASC')));
		$this -> set(compact('costCenters'));
		$this -> getDates();
	}
	
	public function parseData() {
		$this -> autoRender = false;
		if(isset($this->data) && !empty($this->data)) {
			$this -> recursive = -1;
			$conditions = array();
			$redirect = "reporte";
			if (isset($this -> data['Cdr']) && !empty($this -> data['Cdr'])) {
				$data = $this -> data['Cdr'];
			
				// Fecha inicial
				if (!empty($data['fecha_inicial']['fecha'])) {
					$conditions['Cdr.calldate >='] = $data['fecha_inicial']['fecha'];
				}
	
				// Hora inicial
				$hora_inicial = array('hora' => '0', 'minuto' => '00', 'segundo' => '00', 'usar' => false);
				if (isset($data['hora_inicial']['hora']['hour']) && !empty($data['hora_inicial']['hora'])) {
					$hora_inicial['hora'] = $data['hora_inicial']['hora'];
					$hora_inicial['usar'] = true;
				}
				if (isset($data['hora_inicial']['minuto']['min']) && !empty($data['hora_inicial']['minuto'])) {
					$hora_inicial['minuto'] = $data['hora_inicial']['minuto'];
					$hora_inicial['usar'] = true;
				}
				if (isset($data['hora_inicial']['segundo']['min']) && !empty($data['hora_inicial']['segundo'])) {
					$hora_inicial['segundo'] = $data['hora_inicial']['segundo'];
					$hora_inicial['usar'] = true;
				}
				if (isset($conditions['Cdr.calldate >='])) {
					if ($hora_inicial['usar']) {
						$conditions['Cdr.calldate >='] .= ' ' . $hora_inicial['hora'] . ':' . $hora_inicial['minuto'] . ':' . $hora_inicial['segundo'];
					} else {
						$conditions['Cdr.calldate >='] .= ' 00:00:00';
					}
				}
				if(isset($conditions['Cdr.calldate >=']) && !empty($conditions['Cdr.calldate >='])) {
					$redirect .= "/fi:" . urlencode($conditions['Cdr.calldate >=']);
				}
	
				// Fecha final
				if (!empty($data['fecha_final']['fecha'])) {
					$conditions['Cdr.calldate <='] = $data['fecha_final']['fecha'];
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
				if (isset($conditions['Cdr.calldate <='])) {
					if($hora_final['usar']) {
						$conditions['Cdr.calldate <='] .= ' ' . $hora_final['hora'] . ':' . $hora_final['minuto'] . ':' . $hora_final['segundo'];
					} else {
						$conditions['Cdr.calldate <='] .= ' 23:59:59';
					}
				}
				if(isset($conditions['Cdr.calldate <=']) && !empty($conditions['Cdr.calldate <='])) {
					$redirect .= "/ff:" . urlencode($conditions['Cdr.calldate <=']);
				}
	
				// Extensión
				if (isset($data['extension']) && !empty($data['extension'])) {
					//$conditions['Cdr.src'] = $data['extension'];
					$redirect .= "/exten:" . urlencode($data['extension']);
				}

				// Origen
				if (isset($data['origen']) && !empty($data['origen'])) {
					//$conditions['Cdr.src'] = $data['origen'];
					$redirect .= "/src:" . urlencode($data['origen']);
				}
				
				// Destino
				if (isset($data['destino']) && !empty($data['destino'])) {
					//$conditions['Cdr.dst'] = $data['destino'];
					$redirect .= "/dst:" . urlencode($data['destino']);
				}

				// Departamento
				if (isset($data['departamento']) && !empty($data['departamento'])) {
					$this -> loadModel('SipDispositivo');
					$extensions = $this -> SipDispositivo -> find('list', array('conditions' => array('SipDispositivo.department_id' => $data['departamento']), 'fields' => array('SipDispositivo.name')));
					//$conditions['Cdr.src'] = $extensions;
					$tmp_extensions = "";
					foreach($extensions as $exten) {
						$tmp_extensions .= "$exten;";
					}
					$redirect .= "/depCost:" . urlencode($tmp_extensions);
					
				}

				// Centro De Costos
				if (isset($data['centro']) && !empty($data['centro'])) {
					$this -> loadModel('SipDispositivo');
					$extensions = $this -> SipDispositivo -> find('list', array('conditions' => array('SipDispositivo.cost_center_id' => $data['centro']), 'fields' => array('SipDispositivo.name')));
					//$conditions['Cdr.src'] = $extensions;
					$tmp_extensions = "";
					foreach($extensions as $exten) {
						$tmp_extensions .= "$exten;";
					}
					$redirect .= "/depCost:" . urlencode($tmp_extensions);
				}
			}
			$this -> redirect($redirect);
		} else {
			$this->redirect('/cdrs/reporte');
		}
	}

	public function reporte() {
		$queries = null;
		if(isset($this->params['named']) && !empty($this->params['named'])) { $queries = $this -> params['named']; }
		$conditions = array();
		if($queries) {
			// Fecha, hora inicial
			if(isset($queries['fi']) && !isset($queries['ff'])) {
				$conditions['Cdr.calldate >='] = urldecode($queries['fi']);
			}
			// Fecha, hora final
			if(isset($queries['ff']) && !isset($queries['fi'])) {
				$conditions['Cdr.calldate <='] = urldecode($queries['ff']);
			}
			if(isset($queries['fi']) && isset($queries['ff'])) {
				$conditions['Cdr.calldate BETWEEN ? AND ?'] = array(urldecode($queries['fi']), urldecode($queries['ff']));
			}
			// Extensión
			if(isset($queries['exten']) && !empty($queries['exten'])) {
				$conditions['OR'] = array(
					'Cdr.src'=>urldecode($queries['exten']),
					'Cdr.dst'=>urldecode($queries['exten'])
				);
			}
			// Origen
			if(isset($queries['src'])) {
				$conditions['Cdr.src'] = urldecode($queries['src']);
			}
			// Destino
			if(isset($queries['dst'])) {
				$conditions['Cdr.dst'] = urldecode($queries['dst']);
			}
			// Departamentos / Centros De Costos
			if(isset($queries['depCost'])) {
				$tmp_extensions = urldecode($queries['depCost']);
				$tmp_extensions = explode(";", $tmp_extensions);
				foreach($tmp_extensions as $key=>$val) {
					if(empty($val)) {
						unset($tmp_extensions[$key]);
					}
				}
				$conditions['Cdr.src'] = $tmp_extensions;
			}
		}
		$this -> paginate = array('conditions' => $conditions, 'order' => array('Cdr.calldate' => 'ASC'));
		$csv_data = $this -> Cdr -> find('all', array('conditions' => $conditions));
		$cdrs = $this -> paginate();
		$this -> set('cdrs', $cdrs);
		$this -> set('csv_data', $csv_data);
		$this -> Session -> write('CSVExport.full', $csv_data);
		$this -> Session -> write('CSVExport.page', $cdrs);
	}

}
