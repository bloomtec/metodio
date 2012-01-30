<div class="sipDispositivos form">
	<?php echo $this -> Form -> create('SipDispositivo');?>
	<fieldset>
		<h2><?php echo __('Modificar Extensión');?></h2>
		<?php
		echo $this -> Form -> input('id');
		echo $this -> Form -> input('name', array('label' => 'Nombre'));
		echo $this -> Form -> input('username', array('label' => 'Usuario'));
		echo $this -> Form -> input('secret', array('label' => 'Contraseña'));
		echo $this -> Form -> input('callerid', array('label' => 'CLI'));
		echo $this -> Form -> input('mailbox', array('label' => 'Buzón'));
		echo $this -> Form -> input('host', array('label' => 'Host'));
		echo $this -> Form -> input('context', array('label' => 'Contexto', 'type' => 'select', 'options' => $privileges, 'selected' => $this -> data['SipDispositivo']['context']));
		echo $this -> Form -> input('nat', array('label' => 'NAT', 'type' => 'select', 'options' => array('no' => 'no', 'yes' => 'yes')));
		//echo $this -> Form -> input('department_id', array('label' => 'Departamento', 'empty' => __('Seleccione...', true)));
		echo $this -> Form -> input('cost_center_id', array('label' => 'Centro De Costo', 'empty' => __('Seleccione...', true)));
		?>
	</fieldset>
	<?php echo $this -> Form -> end(__('Guardar'));?>
	<?php echo $this -> Html -> link(__('Cancelar'), array('action' => 'index'), array('class' => 'cancelar'));?>
</div>