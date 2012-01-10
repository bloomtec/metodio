<div class="sipDispositivos form">
	<?php echo $this -> Form -> create('SipDispositivo');?>
	<fieldset>
		<h2><?php echo __('Agregar Sip Dispositivo');?></h2>
		<?php
		echo $this -> Form -> input('name');
		echo $this -> Form -> input('secret');
		echo $this -> Form -> input('context', array('type' => 'select', 'options' => $privileges));
		echo $this -> Form -> input('nat', array('type' => 'select', 'options' => array('no'=>'no', 'yes'=>'yes')));
		echo $this -> Form -> input('department_id', array('empty' => __('Seleccione...', true)));
		echo $this -> Form -> input('cost_center_id', array('empty' => __('Seleccione...', true)));
		?>
	</fieldset>
	<?php echo $this -> Html -> link(__('Cancelar'), array('action' => 'index'), array('class' => 'cancelar'));?>
	<?php echo $this -> Form -> end(__('Guardar'));?>
</div>