<div class="costCenters form">
	<?php echo $this -> Form -> create('CostCenter');?>
	<fieldset>
		<h2><?php echo __('Agregar Centro De Costo');?></h2>
		<?php
		echo $this -> Form -> input('name', array('label' => 'Nombre'));
		echo $this -> Form -> input('description', array('label' => 'Descripción'));
		?>
	</fieldset>
	<?php echo $this -> Form -> end(__('Guardar'));?>
	<?php echo $this -> Html -> link(__('Cancelar'), array('action' => 'index'), array('class' => 'cancelar'));?>
</div>