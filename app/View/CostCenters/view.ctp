<div class="costCenters view">
<h2><?php  echo __('Cost Center');?></h2>
		<label><?php echo __('Name'); ?></label>
		<h3>
			<?php echo h($costCenter['CostCenter']['name']); ?>
			&nbsp;
		</h3>
		<label><?php echo __('Description'); ?></label>
		<h3>
			<?php echo h($costCenter['CostCenter']['description']); ?>
			&nbsp;
		</h3>
	
</div>
<div class="actions">
	<ul>
		<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters', 'index')))) : ?>
		<li><?php echo $this->Html->link(__('Volver Cost Centers'), array('action' => 'index')); ?> </li>
		<?php endif; ?>
		<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters', 'edit')))) : ?>
		<li><?php echo $this->Html->link(__('Modificar Cost Center'), array('action' => 'edit', $costCenter['CostCenter']['id'])); ?> </li>
		<?php endif; ?>
	</ul>
</div>