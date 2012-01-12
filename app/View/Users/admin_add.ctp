<div class="users form">
	<?php echo $this -> Form -> create('User');?>
	<fieldset>
		<h2><?php echo __('Agregar User');?></h2>
		<?php
		echo $this -> Form -> input('role_id', array('empty' => 'Seleccione...'));
		echo $this -> Form -> input('email');
		echo $this -> Form -> input('password');
		echo $this -> Form -> input('is_active');
		echo $this -> Form -> input('email_verified');
		?>
	</fieldset>
	<?php echo $this -> Html -> link(__('Cancelar'), array('action' => 'index'), array('class' => 'cancelar'));?>
	<?php echo $this -> Form -> end(__('Guardar'));?>
</div>