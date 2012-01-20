<?php
	$route_prefix = "";
	$method_prefix = ""; 
	if($this->Session->read('Auth.User.role_id') == 1) {
		$route_prefix = "/admin";
		$method_prefix = "admin_";
	}
?>
<div id="main-menu">
	<a class="logo" href="/"><img src="/img/logo_menu.png" /></a>
	<ul>
		<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Users', $method_prefix.'index')))) : ?>
		<li class="usuarios">
			<a href="<?php echo $route_prefix; ?>/users">USUARIOS</a>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Users', $method_prefix.'add')))) : ?>
			<ul>
				<li>
					<a href="<?php echo $route_prefix; ?>/users/add">Agregar</a>
				</li>				
			</ul>
			<?php endif; ?>
		</li>
		<?php endif; ?>
		<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Departments', $method_prefix.'index')))) : ?>
		<li class="departamentos">
			<a href="<?php echo $route_prefix; ?>/departments">DEPARTAMENTOS</a>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Departments', $method_prefix.'add')))) : ?>
			<ul>
				<li>
					<a href="<?php echo $route_prefix; ?>/departments/add">Agregar</a>
				</li>
			</ul>
			<?php endif; ?>
		</li>
		<?php endif; ?>
		<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters', $method_prefix.'index')))) : ?>
		<li class="centros">
			<a href="<?php echo $route_prefix; ?>/cost_centers">CENTROS DE COSTO</a>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters', $method_prefix.'add')))) : ?>
			<ul>
				<li>
					<a href="<?php echo $route_prefix; ?>/cost_centers/add">Agregar</a>
				</li>
			</ul>
			<?php endif; ?>
		</li>
		<?php endif; ?>
		<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', $method_prefix.'index')))) : ?>
		<li class="extensiones">
			<a href="<?php echo $route_prefix; ?>/sip_dispositivos">EXTENSIONES</a>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', $method_prefix.'add')))) : ?>
			<ul>
				<li>
					<a href="<?php echo $route_prefix; ?>/sip_dispositivos/add">Agregar</a>
				</li>
			</ul>
			<?php endif; ?>
		</li>
		<?php endif; ?>
		<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Abbreviates', $method_prefix.'index')))) : ?>
		<li class="abreviados">
			<a href="<?php echo $route_prefix; ?>/abbreviates">ABREVIADOS</a>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Abbreviates', $method_prefix.'add')))) : ?>
			<ul>
				<li>
					<a href="<?php echo $route_prefix; ?>/abbreviates/add">Agregar</a>
				</li>
			</ul>
			<?php endif; ?>
		</li>
		<?php endif; ?>
		<li class="informes">
			<a href="/cdrs/reporteGeneral">INFORMES</a>
			<ul>
				<li>
					<a href="/cdrs/reporteGeneral">General</a>
				</li>
				<li>
					<a href="/cdrs/reporteExtension">Por extensión</a>
				</li>
				<li>
					<a href="/cdrs/reporteNumeroOrigen">Por número de origen</a>
				</li>
				<li>
					<a href="/cdrs/reporteNumeroDestino">Por número de destino</a>
				</li>
				<li>
					<a href="/cdrs/reporteDepartamento">Por departamento</a>
				</li>
				<li>
					<a href="/cdrs/reporteCentroCosto">Por centro de costo</a>
				</li>
			</ul>
		</li>
		<li class="panel">
			<a href="/panel">PANEL</a>
		</li>
	</ul>
</div>