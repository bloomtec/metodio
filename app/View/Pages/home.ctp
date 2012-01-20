<?php
	$route_prefix = "";
	$method_prefix = ""; 
	if($this->Session->read('Auth.User.role_id') == 1) {
		$route_prefix = "/admin";
		$method_prefix = "admin_";
	}
?>
<div class="home">
	<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Users', $method_prefix.'index')))) : ?>
	<a class="home_description" href="<?php echo $route_prefix; ?>/users">
		<h2 class="usuarios">
			USUARIOS
		</h2>
		<p>
			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros.
			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros.
		</p>
	</a>
	<?php endif; ?>
	<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Departments', $method_prefix.'index')))) : ?>
	<a class="home_description" href="<?php echo $route_prefix; ?>/departments">
		<h2 class="departamentos">
			DEPARTAMENTOS
		</h2>
		<p>
			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros.
		</p>
	</a>
	<?php endif; ?>
	<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters', $method_prefix.'index')))) : ?>
	<a class="home_description" href="<?php echo $route_prefix; ?>/cost_centers">
		<h2 class="centros">
			CENTROS DE COSTO
		</h2>
		<p>
			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros.
		</p>
	</a>
	<?php endif; ?>
	<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', $method_prefix.'index')))) : ?>
	<a class="home_description" href="<?php echo $route_prefix; ?>/sip_dispositivos">
		<h2 class="extensiones">
			EXTENSIONES
		</h2>
		<p>
			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros.
		</p>
	</a>
	<?php endif; ?>
	<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Abbreviates', $method_prefix.'index')))) : ?>
	<a class="home_description" href="<?php echo $route_prefix; ?>/abbreviates">
		<h2 class="abreviados">
			ABREVIADOS
		</h2>
		<p>
			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros.
		</p>
	</a>
	<?php endif; ?>
	<a class="home_description" href="/cdrs/reporteGeneral">
		<h2 class="informes">
			INFORMES
		</h2>
		<p>
			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros.
		</p>
	</a>
</div>