<div class="departments form">
<?php echo $this->Form->create('Department');?>
	<fieldset>
		<h2><?php echo __('Modificar Department'); ?></h2>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('name');
		echo $this->Form->input('description');
	?>
	</fieldset>
<?php echo $this->Html->link(__('Cancelar'),array('action'=>'index'),array('class'=>'cancelar'));?>
<?php echo $this->Form->end(__('Guardar'));?>
</div>