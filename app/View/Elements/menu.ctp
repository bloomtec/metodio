<?php
	$role = $this->Session->read('Auth.User.role_id');
	$this -> requestAction('/users/verificarAcceso/controllers');
?>
<div id="main-menu">
	<a class="logo" href="/"><img src="/img/logo_menu.png" /></a>
	<ul>
		<?php if($role==1) : ?>
		<li class="usuarios">
			<a href="/admin/users">USUARIOS</a>
			<ul>
				<li>
					<a href="/admin/users/add">Agregar</a>
				</li>
			</ul>
		</li>
		<?php endif; ?>
		<li class="departamentos">
			<a href="<?php if($role==1) echo '/admin'; ?>/Departments">DEPARTAMENTOS</a>
			<ul>
				<li>
					<a href="<?php if($role==1) echo '/admin'; ?>/Departments/add">Agregar</a>
				</li>
			</ul>
		</li>
		<li class="centros">
			<a href="<?php if($role==1) echo '/admin'; ?>/CostCenters">CENTROS DE COSTO</a>
			<ul>
				<li>
					<a href="<?php if($role==1) echo '/admin'; ?>/CostCenters/add">Agregar</a>
				</li>
			</ul>
		</li>
		<li class="extensiones">
			<a href="<?php if($role==1) echo '/admin'; ?>/SipDispositivos">EXTENSIONES</a>
			<ul>
				<li>
					<a href="<?php if($role==1) echo '/admin'; ?>/SipDispositivos/add">Agregar</a>
				</li>
			</ul>
		</li>
		<li class="abreviados">
			<a href="">ABREVIADOS</a>
			<ul>
				<li>
					<a href="">Agregar</a>
				</li>
			</ul>
		</li>
		<li class="informes">
			<a href="">INFORMES</a>
			<ul>
				<li>
					<a href="">General</a>
				</li>
				<li>
					<a href="">Por extensión</a>
				</li>
				<li>
					<a href="">Por número de origen</a>
				</li>
				<li>
					<a href="">Por número de destino</a>
				</li>
				<li>
					<a href="">Por departamento</a>
				</li>
				<li>
					<a href="">Por centro de costo</a>
				</li>
			</ul>
		</li>
	</ul>
</div>