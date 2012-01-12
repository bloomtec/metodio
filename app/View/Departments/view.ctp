<div class="departments view">
<h2><?php  echo __('Departamento');?></h2>
		<label><?php echo __('Nombre'); ?></label>
		<h3>
			<?php echo h($department['Department']['name']); ?>
			&nbsp;
		</h3>
		<label><?php echo __('Descripción'); ?></label>
		<h3>
			<?php echo h($department['Department']['description']); ?>
			&nbsp;
		</h3>
	
</div>
<div class="actions">
	<ul>
		<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Departments', 'index')))) : ?>
		<li><?php echo $this->Html->link(__('Volver'), array('action' => 'index')); ?> </li>
		<?php endif; ?>
		<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'Departments', 'edit')))) : ?>
		<li><?php echo $this->Html->link(__('Modificar Departmento'), array('action' => 'edit', $department['Department']['id'])); ?> </li>
		<?php endif; ?>
	</ul>
</div>