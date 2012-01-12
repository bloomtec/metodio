<div class="users view">
<h2><?php  echo __('User');?></h2>
		<label><?php echo __('Rol'); ?></label>
		<h3>
			<?php echo $this->Html->link($user['Role']['name'], array('controller' => 'roles', 'action' => 'view', $user['Role']['id'])); ?>
			&nbsp;
		</h3>
		<label><?php echo __('Correo Electrónico'); ?></label>
		<h3>
			<?php echo h($user['User']['email']); ?>
			&nbsp;
		</h3>
		<label><?php echo __('Activo'); ?></label>
		<?php if($user['User']['is_active']){ ?>
			<input type='checkbox' checked='checked' disabled='true' class='checkbox'/> 
		<?php } else { ?>
			<input type='checkbox' disabled='true' class='checkbox'/>
		<?php } ?>
		<label><?php echo __('Correo Verificado'); ?></label>
		<?php if($user['User']['email_verified']){ ?>
			<input type='checkbox' checked='checked' disabled='true' class='checkbox'/> 
		<?php } else { ?>
			<input type='checkbox' disabled='true' class='checkbox'/>
		<?php } ?>	
</div>
<div class="actions">
	<ul>
		<li><?php echo $this->Html->link(__('Volver'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('Modificar Usuario'), array('action' => 'edit', $user['User']['id'])); ?> </li>
	</ul>
</div>