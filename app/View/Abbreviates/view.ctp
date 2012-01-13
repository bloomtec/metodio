<div class="abbreviates view">
<h2><?php  echo __('Abbreviate');?></h2>
		<label><?php echo __('Abbreviate'); ?></label>
		<h3>
			<?php echo h($abbreviate['Abbreviate']['abbreviate']); ?>
			&nbsp;
		</h3>
		<label><?php echo __('Phone'); ?></label>
		<h3>
			<?php echo h($abbreviate['Abbreviate']['phone']); ?>
			&nbsp;
		</h3>
	
</div>
<div class="actions">
	<ul>
		<li><?php echo $this->Html->link(__('Volver Abbreviates'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('Modificar Abbreviate'), array('action' => 'edit', $abbreviate['Abbreviate']['id'])); ?> </li>
	</ul>
</div>