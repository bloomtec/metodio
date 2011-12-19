<div class="roles view">
	<h2><?php  echo __('Role');?></h2>
		<label>Nombre de usuario:</label>
		<h3>Algo</h3>
		<label>Rol:</label>
		<h3>Algo</h3>
		<label>E-mail:</label>
		<h3>Algo</h3>
		<label>Activo:</label>
		<input type="checkbox" checked="checked" disabled="true" class="checkbox"/>
	</div>
	<div style="clear: both"></div>
	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('Edit Role'), array('action' => 'edit', $role['Role']['id'])); ?> </li>
			<li><?php echo $this->Form->postLink(__('Delete Role'), array('action' => 'delete', $role['Role']['id']), null, __('Are you sure you want to delete # %s?', $role['Role']['id'])); ?> </li>
		<!-- <li><?php echo $this->Html->link(__('List Roles'), array('action' => 'index')); ?> </li>
			<li><?php echo $this->Html->link(__('New Role'), array('action' => 'add')); ?> </li>
			<li><?php echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); ?> </li>
			<li><?php echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); ?> </li>
		-->
		</ul>
		<div style="clear: both"></div>
	</div>