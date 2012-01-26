<div class="sipDispositivos form">
	<?php echo $this -> Form -> create('SipDispositivo');?>
	<fieldset>
		<h2><?php echo __('Agregar Extensión');?></h2>
		<?php
		echo $this -> Form -> input('name', array('label' => 'Nombre'));
		echo $this -> Form -> input('secret', array('label' => 'Contraseña'));
		echo $this -> Form -> input('context', array('label' => 'Contexto', 'type' => 'select', 'options' => $privileges, 'empty' => __('Seleccione...', true)));
		echo $this -> Form -> input('nat', array('label' => 'NAT', 'type' => 'select', 'options' => array('no' => 'no', 'yes' => 'yes'), 'empty' => __('Seleccione...', true)));
		echo $this -> Form -> input('department_id', array('label' => 'Departamento', 'empty' => __('Seleccione...', true)));
		echo $this -> Form -> input('cost_center_id', array('label' => 'Centro De Costo', 'empty' => __('Seleccione...', true)));
		?>
	</fieldset>
	<?php echo $this -> Form -> end(__('Guardar'));?>
	<?php echo $this -> Html -> link(__('Cancelar'), array('action' => 'index'), array('class' => 'cancelar'));?>
</div>