<div class="users form">
	<?php echo $this -> Form -> create('User');?>
	<fieldset>
		<h2><?php echo __('Agregar Usuario');?></h2>
		<?php
		echo $this -> Form -> input('role_id', array('label'=>'Rol', 'empty' => 'Seleccione...'));
		echo $this -> Form -> input('username', array('label'=>'Usuario'));
		echo $this -> Form -> input('password', array('label'=>'Contraseña'));
		echo $this -> Form -> input('is_active', array('label'=>'Activo'));
		?>
	</fieldset>
	<?php echo $this -> Html -> link(__('Cancelar'), array('action' => 'index'), array('class' => 'cancelar'));?>
	<?php echo $this -> Form -> end(__('Guardar'));?>
</div>