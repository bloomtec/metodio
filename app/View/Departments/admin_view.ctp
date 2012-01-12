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
		<li><?php echo $this->Html->link(__('Volver'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('Modificar Departmento'), array('action' => 'edit', $department['Department']['id'])); ?> </li>
	</ul>
</div>