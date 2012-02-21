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
		<?php //if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Departments', 'index')))) : ?>
		<!--
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
		-->
		<?php //endif; ?>
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
		<?php
			if(
				$this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeGeneral'))) ||
				$this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeExtension'))) ||
				$this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeNumeroOrigen'))) ||
				$this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeNumeroDestino'))) ||
				$this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeDepartamento'))) ||
				$this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeCentroCosto')))
			) :
		?>
		<li class="informes">
			<a href="">INFORMES</a>
			<ul>
				<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeGeneral')))) : ?>
				<li>
					<a href="/cdrs/informeGeneral">General</a>
				</li>
				<?php endif; ?>
				<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeExtension')))) : ?>
				<li>
					<a href="/cdrs/informeExtension">Por extensión</a>
				</li>
				<?php endif; ?>
				<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeNumeroOrigen')))) : ?>
				<li>
					<a href="/cdrs/informeNumeroOrigen">Por número de origen</a>
				</li>
				<?php endif; ?>
				<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeNumeroDestino')))) : ?>
				<li>
					<a href="/cdrs/informeNumeroDestino">Por número de destino</a>
				</li>
				<?php endif; ?>
				<?php //if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeDepartamento')))) : ?>
					<!--
				<li>
					<a href="/cdrs/informeDepartamento">Por departamento</a>
				</li>
				-->
				<?php //endif; ?>
				<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Cdrs', 'informeCentroCosto')))) : ?>
				<li>
					<a href="/cdrs/informeCentroCosto">Por centro de costo</a>
				</li>
				<?php endif; ?>
			</ul>
		</li>
		<?php endif; ?>
		<li class="panel">
			<a href="/pages/display/panel">PANEL</a>
		</li>
	</ul>
</div>