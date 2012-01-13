<div class="abbreviates form">
<?php echo $this->Form->create('Abbreviate');?>
	<fieldset>
		<h2><?php echo __('Modificar Abbreviate'); ?></h2>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('abbreviate');
		echo $this->Form->input('phone');
	?>
	</fieldset>
<?php echo $this->Html->link(__('Cancelar'),array('action'=>'index'),array('class'=>'cancelar'));?>
<?php echo $this->Form->end(__('Guardar'));?>
</div>