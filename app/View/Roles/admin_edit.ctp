<div class="roles form">
<?php echo $this->Form->create('Role');?>
	<fieldset>
		<h2><?php echo __('Modificar Role'); ?></h2>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('name');
		echo $this->Form->input('description');
		echo $this->Form->input('prueba');
	?>
	</fieldset>
<?php echo $this->Html->link(__('Cancelar'),array('action'=>'index'),array('class'=>'cancelar'));?>
<?php echo $this->Form->end(__('Guardar'));?>
</div>