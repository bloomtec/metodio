<div class="roles form">
<?php echo $this->Form->create('Role');?>
	<fieldset>
		<!-- METODIO
		<legend><?php echo __('Add Role'); ?></legend>
		-->
		<h2><?php  echo __('Role');?></h2>
	<?php
		echo $this->Form->input('name');
		echo $this->Form->input('description');
		echo $this->Form->input('prueba');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit'));?>
</div>
<!-- METODIO
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Roles'), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); ?> </li>
	</ul>
</div>
-->