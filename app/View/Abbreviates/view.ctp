<div class="abbreviates view">
	<h2><?php  echo __('Abreviado');?></h2>
	<label><?php echo __('Abreviado'); ?></label>
	<h3>
		<?php echo h($abbreviate['Abbreviate']['abbreviate']); ?>
		&nbsp;
	</h3>
	<label><?php echo __('Nombre'); ?></label>
	<h3>
		<?php echo h($abbreviate['Abbreviate']['name']); ?>
		&nbsp;
	</h3>
	<label><?php echo __('Número'); ?></label>
	<h3>
		<?php echo h($abbreviate['Abbreviate']['phone']); ?>
		&nbsp;
	</h3>
</div>
<div class="actions">
	<ul>
		<li><?php echo $this->Html->link(__('Modificar Abreviado'), array('action' => 'edit', $abbreviate['Abbreviate']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Volver'), array('action' => 'index')); ?> </li>
	</ul>
</div>