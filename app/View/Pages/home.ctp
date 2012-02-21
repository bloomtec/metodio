<div class="home">
	<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Users', 'index')))) : ?>
	<a class="home_description" href="/users">
		<h2 class="usuarios">
			USUARIOS
		</h2>
		<p>
			Listado de los usuarios que tienen acceso a esta aplicación.
		</p>
	</a>
	<?php endif; ?>
	<?php //if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Departments', 'index')))) : ?>
	<!--
	<a class="home_description" href="/departments">
		<h2 class="departamentos">
			DEPARTAMENTOS
		</h2>
		<p>
			Listado de los departamentos que han sido creados.
		</p>
	</a>
	-->
	<?php //endif; ?>
	<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters', 'index')))) : ?>
	<a class="home_description" href="/cost_centers">
		<h2 class="centros">
			CENTROS DE COSTO
		</h2>
		<p>
			Listado de los centros de costo disponibles.
		</p>
	</a>
	<?php endif; ?>
	<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', 'index')))) : ?>
	<a class="home_description" href="/sip_dispositivos">
		<h2 class="extensiones">
			EXTENSIONES
		</h2>
		<p>
			Extensiones creadas para los usuarios de linea telefónica.
		</p>
	</a>
	<?php endif; ?>
	<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Abbreviates', 'index')))) : ?>
	<a class="home_description" href="/abbreviates">
		<h2 class="abreviados">
			ABREVIADOS
		</h2>
		<p>
			Combinaciones especiales asignadas a números telefónicos especificos para poder así realizar llamadas a estos.
		</p>
	</a>
	<?php endif; ?>
	<?php
		if(
			$this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeGeneral'))) ||
			$this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeExtension'))) ||
			$this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeNumeroOrigen'))) ||
			$this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeNumeroDestino'))) ||
			$this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeDepartamento'))) ||
			$this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeCentroCosto')))
		) :
		$reporte = '';
		if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeGeneral')))) {
			$reporte = 'informeGeneral';
		} elseif($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeExtension')))) {
			$reporte = 'informeExtension';
		} elseif($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeNumeroOrigen')))) {
			$reporte = 'informeNumeroOrigen';
		} elseif($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeNumeroDestino')))) {
			$reporte = 'informeNumeroDestino';
		} elseif($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeDepartamento')))) {
			$reporte = 'informeDepartamento';
		} elseif($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeCentroCosto')))) {
			$reporte = 'informeCentroCosto';
		}
	?>
	<a class="home_description" href="/cdrs/<?php echo $reporte; ?>">
		<h2 class="informes">
			INFORMES
		</h2>
		<p>
			Visualización de historial de llamadas registradas.
		</p>
	</a>
	<?php endif; ?>
	<a class="home_description" href="/pages/display/panel">
		<h2 class="panel">
			ESTADO DE EXTENSIONES
		</h2>
		<p>
			Visualización de las extensiones registradas (a este panel).
		</p>
	</a>
</div>