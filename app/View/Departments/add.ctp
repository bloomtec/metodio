<div class="departments form">
<?php echo $this->Form->create('Department');?>
	<fieldset>
		<h2><?php echo __('Agregar Departamento'); ?></h2>
	<?php
		echo $this->Form->input('name', array('label'=>'Nombre'));
		echo $this->Form->input('description', array('label'=>'Descripción'));
	?>
	</fieldset>
<?php echo $this->Html->link(__('Cancelar'),array('action'=>'index'),array('class'=>'cancelar'));?>
<?php echo $this->Form->end(__('Guardar'));?>
</div>