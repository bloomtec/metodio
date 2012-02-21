<?php
App::uses('AppController', 'Controller');
/**
 * Cdrs Controller
 *
 * @property Cdr $Cdr
 */
class CdrsController extends AppController {

	public function getDates() {
		$ayer = explode('.', date('Y.m.d', strtotime('yesterday')));
		$hoy = explode('.', date('Y.m.d.H.i.s'));
		$this -> set(compact('ayer', 'hoy'));
	}

	public function informeGeneral() {
		$this -> getDates();
		$this -> resetCallDateLastRowForExport();
		$this -> set('title_for_layout', 'Informe General');
		$this -> Session -> write('prefix_for_title', 'Informe General');
	}

	public function informeExtension() {
		$this -> getDates();
		$this -> resetCallDateLastRowForExport();
		$this -> set('title_for_layout', 'Informe Por Extensión');
		$this -> Session -> write('prefix_for_title', 'Informe Por Extensión');
	}

	public function informeNumeroOrigen() {
		$this -> getDates();
		$this -> resetCallDateLastRowForExport();
		$this -> set('title_for_layout', 'Informe Por Número De Origen');
		$this -> Session -> write('prefix_for_title', 'Informe Por Número De Origen');
	}

	public function informeNumeroDestino() {
		$this -> getDates();
		$this -> resetCallDateLastRowForExport();
		$this -> set('title_for_layout', 'Informe Por Número De Destino');
		$this -> Session -> write('prefix_for_title', 'Informe Por Número De Destino');
	}

	/* public function informeDepartamento() {
		$this -> loadModel('Department');
		$departments = $this -> Department -> find('list', array('order' => array('Department.name' => 'ASC')));
		$this -> set(compact('departments'));
		$this -> getDates();
		$this -> resetCallDateLastRowForExport();
		$this -> set('title_for_layout', 'Informe Por Departamento');
		$this -> Session -> write('prefix_for_title', 'Informe Por Departamento');
	} */

	public function informeCentroCosto() {
		$this -> loadModel('CostCenter');
		$costCenters = $this -> CostCenter -> find('list', array('order' => array('CostCenter.name' => 'ASC')));
		$this -> set(compact('costCenters'));
		$this -> getDates();
		$this -> resetCallDateLastRowForExport();
		$this -> set('title_for_layout', 'Informe Por Centro De Costo');
		$this -> Session -> write('prefix_for_title', 'Informe Por Centro De Costo');
	}

	public function parseData() {
		$this -> autoRender = false;
		if (isset($this -> data) && !empty($this -> data)) {
			$this -> recursive = -1;
			$conditions = array();
			$redirect = "reporte";
			if (isset($this -> data['Cdr']) && !empty($this -> data['Cdr'])) {
				$data = $this -> data['Cdr'];

				// Fecha inicial
				if (isset($data['fecha_inicial'])) {
					$conditions['Cdr.calldate >='] = $data['fecha_inicial']['fecha'] . ' ' . $data['fecha_inicial']['hora'] . ':' . $data['fecha_inicial']['minuto'] . ':' . $data['fecha_inicial']['segundo'];
				}

				if (isset($conditions['Cdr.calldate >=']) && !empty($conditions['Cdr.calldate >='])) {
					$redirect .= "/fi:" . urlencode($conditions['Cdr.calldate >=']);
				}

				// Fecha final
				if (isset($data['fecha_final'])) {
					$conditions['Cdr.calldate <='] = $data['fecha_final']['fecha'] . ' ' . $data['fecha_final']['hora'] . ':' . $data['fecha_final']['minuto'] . ':' . $data['fecha_final']['segundo'];
				}

				if (isset($conditions['Cdr.calldate <=']) && !empty($conditions['Cdr.calldate <='])) {
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
					$redirect .= "/departamento:" . urlencode($data['departamento']);
				}

				// Centro De Costos
				if (isset($data['centro']) && !empty($data['centro'])) {
					$redirect .= "/depCost:" . urlencode($data['centro']);
				}
			}
			$this -> redirect($redirect);
		} else {
			$this -> redirect('/cdrs/reporte');
		}
	}

	public function reporte() {
		$this -> setMemoryLimit();
		$tipo = $this -> Session -> read('prefix_for_title');
		$title_for_layout = 'Reporte :: ' . $tipo;
		$this -> set('title_for_layout', $title_for_layout);
		$queries = null;
		if (isset($this -> params['named']) && !empty($this -> params['named'])) {
			$queries = $this -> params['named'];
		}
		$conditions = array();
		if ($queries) {
			// Fecha, hora inicial
			if (isset($queries['fi']) && !isset($queries['ff'])) {
				$conditions['Cdr.calldate >='] = urldecode($queries['fi']);
			}
			// Fecha, hora final
			if (isset($queries['ff']) && !isset($queries['fi'])) {
				$conditions['Cdr.calldate <='] = urldecode($queries['ff']);
			}
			if (isset($queries['fi']) && isset($queries['ff'])) {
				$conditions['Cdr.calldate BETWEEN ? AND ?'] = array(urldecode($queries['fi']), urldecode($queries['ff']));
			}
			// Extensión
			if (isset($queries['exten']) && !empty($queries['exten'])) {
				$extentions = urldecode($queries['exten']);
				$extentions = trim($extentions);
				$extentions = explode(',', $extentions);
				foreach ($extentions as $key => $value) {
					$extentions[$key] = trim($value);
				}
				$conditions['OR'] = array('Cdr.src' => $extentions, 'Cdr.dst' => $extentions);
			}
			// Origen
			if (isset($queries['src'])) {
				$extentions = urldecode($queries['src']);
				$extentions = trim($extentions);
				$extentions = explode(',', $extentions);
				foreach ($extentions as $key => $value) {
					$extentions[$key] = trim($value);
				}
				$conditions['Cdr.src'] = $extentions;
			}
			// Destino
			if (isset($queries['dst'])) {
				$extentions = urldecode($queries['dst']);
				$extentions = trim($extentions);
				$extentions = explode(',', $extentions);
				foreach ($extentions as $key => $value) {
					$extentions[$key] = trim($value);
				}
				$conditions['Cdr.dst'] = $extentions;
			}
			// Departamentos
			if (isset($queries['departamento'])) {
				$conditions['Cdr.department'] = urldecode($queries['departamento']);
			}
			// Centros De Costos
			if (isset($queries['depCost'])) {
				$conditions['Cdr.cost_center'] = urldecode($queries['depCost']);
			}
		}

		$this -> paginate = array('conditions' => $conditions, 'order' => array('Cdr.id' => 'ASC'));
		//$csv_data = $this -> Cdr -> find('all', array('conditions' => $conditions));

		$this -> Session -> delete('inner_name');
		if (isset($conditions['OR']['Cdr.src']) && isset($conditions['OR']['Cdr.dst'])) {
			$this -> Session -> write('inner_name', $conditions['OR']['Cdr.dst']);
		} elseif (isset($conditions['Cdr.src'])) {
			$this -> Session -> write('inner_name', $conditions['Cdr.src']);
		} elseif (isset($conditions['Cdr.dst'])) {
			$this -> Session -> write('inner_name', $conditions['Cdr.dst']);
		} elseif (isset($conditions['Cdr.department'])) {
			$this -> Session -> write('inner_name', $conditions['Cdr.department']);
		} elseif (isset($conditions['Cdr.cost_center'])) {
			$this -> Session -> write('inner_name', $conditions['Cdr.cost_center']);
		}

		$cdrs = $this -> paginate();

		$this -> set(compact('cdrs'));
		//$this -> set(compact('cdrs', 'csv_data'));

		// Guardar las condiciones del informe
		$this -> Session -> delete('CSVExport.conditions');
		$this -> Session -> write('CSVExport.conditions', $conditions);

		// Registrar hora para el nombre
		if (isset($conditions['Cdr.calldate BETWEEN ? AND ?'])) {
			$file_name_hour = '(' . $conditions['Cdr.calldate BETWEEN ? AND ?'][0] . '_' . $conditions['Cdr.calldate BETWEEN ? AND ?'][1] . ')';
			$file_name_hour = str_ireplace(' ', '_', $file_name_hour);
			$file_name_hour = str_ireplace(':', '-', $file_name_hour);
			$this -> Session -> delete('nombre_hora');
			$this -> Session -> write('nombre_hora', $file_name_hour);
		}
		$this -> set('fi', $queries['fi']);
		$this -> set('ff', $queries['ff']);
	}

	public function resetCallDateLastRowForExport() {
		$this -> Session -> delete('CSVExport.calldate_limit');
	}

	public function getCallDateLastRowForExport() {
		$calldate_limit = $this -> Session -> read('CSVExport.calldate_limit');
		if(empty($calldate_limit)) {
			$conditions = $this -> Session -> read('CSVExport.conditions');
			$calldate_limit = $this -> Cdr -> find('all', array('conditions' => $conditions, 'limit' => 300000, 'fields' => array('Cdr.calldate'), 'order' => array('Cdr.id' => 'ASC')));
			$calldate_limit = $calldate_limit[299999]['Cdr']['calldate'];
			$this -> Session -> write('CSVExport.calldate_limit', $calldate_limit);
		}
		return $calldate_limit;
	}

}
