<?php $role_id = $this->Session->read('Auth.User.role_id'); ?>
<div id="main-menu">
	<a class="logo" href="/"><img src="/img/logo_menu.png" /></a>
	<ul>
		<li class="usuarios">
			<?php
				if($role_id == 2) {
					if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Users')))) {
			?>
			<a href="/users">USUARIOS</a>
			<ul>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Users', 'add')))) { ?>
				<li>
					<a href="/users/add">Agregar</a>
				</li>
			</ul>
			<?php
					}
				}
			?>
			<?php } else { ?>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Users')))) { ?>
			<a href="/admin/users">USUARIOS</a>
			<ul>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Users', 'admin_add')))) { ?>
				<li>
					<a href="/admin/users/add">Agregar</a>
				</li>
			</ul>
			<?php
						}
					}
				}
			?>
		</li>
		<li class="departamentos">
			<?php
				if($role_id == 2) {
					if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Departments')))) {
			?>
			<a href="/departments">DEPARTAMENTOS</a>
			<ul>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Departments', 'add')))) { ?>
				<li>
					<a href="/departments/add">Agregar</a>
				</li>
			</ul>
			<?php
					}
				}
			?>
			<?php } else { ?>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Departments')))) { ?>
			<a href="/admin/departments">DEPARTAMENTOS</a>
			<ul>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Departments', 'admin_add')))) { ?>
				<li>
					<a href="/admin/departments/add">Agregar</a>
				</li>
			</ul>
			<?php
						}
					}
				}
			?>
		</li>
		<li class="centros">
			<?php
				if($role_id == 2) {
					if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters')))) {
			?>
			<a href="/cost_centers">CENTROS DE COSTO</a>
			<ul>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters', 'add')))) { ?>
				<li>
					<a href="/cost_centers/add">Agregar</a>
				</li>
			</ul>
			<?php
					}
				}
			?>
			<?php } else { ?>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters')))) { ?>
			<a href="/admin/cost_centers">CENTROS DE COSTO</a>
			<ul>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters', 'admin_add')))) { ?>
				<li>
					<a href="/admin/cost_centers/add">Agregar</a>
				</li>
			</ul>
			<?php
						}
					}
				}
			?>
		</li>
		<li class="extensiones">
			<?php
				if($role_id == 2) {
					if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos')))) {
			?>
			<a href="/sip_dispositivos">EXTENSIONES</a>
			<ul>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', 'add')))) { ?>
				<li>
					<a href="/sip_dispositivos/add">Agregar</a>
				</li>
			</ul>
			<?php
					}
				}
			?>
			<?php } else { ?>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos')))) { ?>
			<a href="/admin/sip_dispositivos">EXTENSIONES</a>
			<ul>
			<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', 'admin_add')))) { ?>
				<li>
					<a href="/admin/sip_dispositivos/add">Agregar</a>
				</li>
			</ul>
			<?php
						}
					}
				}
			?>			
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