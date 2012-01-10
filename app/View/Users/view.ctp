<div class="users view">
<h2><?php  echo __('User');?></h2>
		<label><?php echo __('Role'); ?></label>
		<h3>
			<?php echo $this->Html->link($user['Role']['name'], array('controller' => 'roles', 'action' => 'view', $user['Role']['id'])); ?>
			&nbsp;
		</h3>
		<label><?php echo __('Email'); ?></label>
		<h3>
			<?php echo h($user['User']['email']); ?>
			&nbsp;
		</h3>
		<label><?php echo __('Password'); ?></label>
		<h3>
			<?php echo h($user['User']['password']); ?>
			&nbsp;
		</h3>
		<label><?php echo __('Activo'); ?></label>
		<?php if($user['User']['is_active']){ ?> 
			 <input type='checkbox' checked='checked' disabled='true' class='checkbox'/> 
		 <?php }else{ ?> 
			 <input type='checkbox' disabled='true' class='checkbox'/>
		 <?php } ?>
		<h3>
			<?php echo h($user['User']['is_active']); ?>
			&nbsp;
		</h3>
		<label><?php echo __('Email Verified'); ?></label>
		<h3>
			<?php echo h($user['User']['email_verified']); ?>
			&nbsp;
		</h3>
	
</div>
<div class="actions">
	<ul>
		<li><?php echo $this->Html->link(__('Volver Users'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('Modificar User'), array('action' => 'edit', $user['User']['id'])); ?> </li>
	</ul>
</div>