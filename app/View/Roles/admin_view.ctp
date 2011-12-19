<div class="roles view">
<h2><?php  echo __('Role');?></h2>
		<label><?php echo __('Name'); ?></label>
		<h3>
			<?php echo h($role['Role']['name']); ?>
			&nbsp;
		</h3>
		<label><?php echo __('Description'); ?></label>
		<h3>
			<?php echo h($role['Role']['description']); ?>
			&nbsp;
		</h3>
		<label><?php echo __('Prueba'); ?></label>
		<h3>
			<?php echo h($role['Role']['prueba']); ?>
			&nbsp;
		</h3>
	
</div>
<div class="actions">
	<ul>
		<li><?php echo $this->Html->link(__('Volver Roles'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('Modificar Role'), array('action' => 'edit', $role['Role']['id'])); ?> </li>
	</ul>
</div>