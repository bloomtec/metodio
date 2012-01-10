<div class="departments view">
<h2><?php  echo __('Department');?></h2>
		<label><?php echo __('Name'); ?></label>
		<h3>
			<?php echo h($department['Department']['name']); ?>
			&nbsp;
		</h3>
		<label><?php echo __('Description'); ?></label>
		<h3>
			<?php echo h($department['Department']['description']); ?>
			&nbsp;
		</h3>
	
</div>
<div class="actions">
	<ul>
		<li><?php echo $this->Html->link(__('Volver Departments'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('Modificar Department'), array('action' => 'edit', $department['Department']['id'])); ?> </li>
	</ul>
</div>