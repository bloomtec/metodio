<?php $role_id = $this->Session->read('Auth.User.role_id'); ?>
<div id="main-menu">
	<a class="logo" href="/"><img src="/img/logo_menu.png" /></a>
	<ul>
		<li class="usuarios">
			<?php
				if($role_id == 2 && $this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Users', 'index')))) {
			?>
			<a href="/users">USUARIOS</a>
			<ul>
				<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Users', 'add')))) { ?>
					<li>
						<a href="/users/add">Agregar</a>
					</li>
				<?php } ?>
			</ul>
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
				if($role_id == 2 && $this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Departments', 'index')))) {
			?>
			<a href="/departments">DEPARTAMENTOS</a>
			<ul>
				<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Departments', 'add')))) { ?>
					<li>
						<a href="/departments/add">Agregar</a>
					</li>
				<?php }	?>
			</ul>
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
			<?php if($role_id == 2 && $this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters', 'index')))) { ?>
			<a href="/cost_centers">CENTROS DE COSTO</a>
			<ul>
				<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters', 'add')))) { ?>
					<li>
						<a href="/cost_centers/add">Agregar</a>
					</li>
				<?php } ?>
			</ul>
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
				if($role_id == 2 && $this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', 'index')))) {	
			?>
			<a href="/sip_dispositivos">EXTENSIONES</a>
			<ul>
				<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', 'add')))) { ?>
					<li>
						<a href="/sip_dispositivos/add">Agregar</a>
					</li>
				<?php }	?>
			</ul>
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
			<?php
				if($role_id == 2 && $this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Abbreviates', 'index')))) {	
			?>
			<a href="/abbreviates">ABREVIADOS</a>
			<ul>
				<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Abbreviates', 'add')))) { ?>
					<li>
						<a href="/abbreviates/add">Agregar</a>
					</li>
				<?php }	?>
			</ul>
				<?php } else { ?>
				<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Abbreviates')))) { ?>
				<a href="/admin/abbreviates">ABREVIADOS</a>
			<ul>
				<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Abbreviates', 'admin_add')))) { ?>
				<li>
					<a href="/admin/abbreviates/add">Agregar</a>
				</li>
			</ul>
			<?php
						}
					}
				}
			?>
		</li>
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
	</ul>
</div>