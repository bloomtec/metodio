<div class='login'>
	<?php echo $this -> Form -> create('User', array('action' => 'login'));?>
	<legend>
		<?php __('Login', true);?>
	</legend>
	<?php echo $this -> Form -> input('username', array('label'=>'Usuario', 'required' => 'required'));?>
	<?php echo $this -> Form -> input('password', array('label'=>'Contraseña', 'required' => 'required'));?>
	<?php echo $this -> Form -> end(__('Login', true));?>
</div>
<?php //echo $this -> element('ajax-login');?>