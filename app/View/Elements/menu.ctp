<div id="main-menu">
	<a class="logo" href="/"><img src="/img/logo_menu.png" /></a>
	<ul>
		<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Users', 'index')))) : ?>
		<li class="usuarios">
			<a href="/users">USUARIOS</a>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Users', 'add')))) : ?>
			<ul>
				<li>
					<a href="/users/add">Agregar</a>
				</li>				
			</ul>
			<?php endif; ?>
		</li>
		<?php endif; ?>
		<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Departments', 'index')))) : ?>
		<li class="departamentos">
			<a href="/departments">DEPARTAMENTOS</a>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Departments', 'add')))) : ?>
			<ul>
				<li>
					<a href="/departments/add">Agregar</a>
				</li>
			</ul>
			<?php endif; ?>
		</li>
		<?php endif; ?>
		<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters', 'index')))) : ?>
		<li class="centros">
			<a href="/cost_centers">CENTROS DE COSTO</a>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters', 'add')))) : ?>
			<ul>
				<li>
					<a href="/cost_centers/add">Agregar</a>
				</li>
			</ul>
			<?php endif; ?>
		</li>
		<?php endif; ?>
		<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', 'index')))) : ?>
		<li class="extensiones">
			<a href="/sip_dispositivos">EXTENSIONES</a>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', 'add')))) : ?>
			<ul>
				<li>
					<a href="/sip_dispositivos/add">Agregar</a>
				</li>
			</ul>
			<?php endif; ?>
		</li>
		<?php endif; ?>
		<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Abbreviates', 'index')))) : ?>
		<li class="abreviados">
			<a href="/abbreviates">ABREVIADOS</a>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Abbreviates', 'add')))) : ?>
			<ul>
				<li>
					<a href="/abbreviates/add">Agregar</a>
				</li>
			</ul>
			<?php endif; ?>
		</li>
		<?php endif; ?>
		<li class="informes">
			<a href="/cdrs/informeGeneral">INFORMES</a>
			<ul>
				<li>
					<a href="/cdrs/informeGeneral">General</a>
				</li>
				<li>
					<a href="/cdrs/informeExtension">Por extensión</a>
				</li>
				<li>
					<a href="/cdrs/informeNumeroOrigen">Por número de origen</a>
				</li>
				<li>
					<a href="/cdrs/informeNumeroDestino">Por número de destino</a>
				</li>
				<li>
					<a href="/cdrs/informeDepartamento">Por departamento</a>
				</li>
				<li>
					<a href="/cdrs/informeCentroCosto">Por centro de costo</a>
				</li>
			</ul>
		</li>
		<li class="panel">
			<a href="/pages/display/panel">PANEL</a>
		</li>
	</ul>
</div>