<div class="abbreviates form">
	<?php echo $this -> Form -> create('Abbreviate');?>
	<fieldset>
		<h2><?php echo __('Modificar Abreviado');?></h2>
		<?php
		echo $this -> Form -> input('id');
		echo $this -> Form -> input('abbreviate', array('label' => 'Abreviado'));
		echo $this -> Form -> input('name', array('label' => 'Nombre'));
		echo $this -> Form -> input('phone', array('label' => 'Número'));
		?>
	</fieldset>
	<?php echo $this -> Html -> link(__('Cancelar'), array('action' => 'index'), array('class' => 'cancelar'));?>
	<?php echo $this -> Form -> end(__('Guardar'));?>
</div>