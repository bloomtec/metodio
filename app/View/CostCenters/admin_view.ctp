<div class="costCenters view">
	<h2><?php  echo __('Centro De Costo');?></h2>
	<label><?php echo __('Nombre');?></label>
	<h3><?php echo h($costCenter['CostCenter']['name']);?>
	&nbsp;</h3>
	<label><?php echo __('Descripción');?></label>
	<h3><?php echo h($costCenter['CostCenter']['description']);?>
	&nbsp;</h3>
</div>
<div class="actions">
	<ul>
		<li>
			<?php echo $this -> Html -> link(__('Volver'), array('action' => 'index'));?>
		</li>
		<li>
			<?php echo $this -> Html -> link(__('Modificar Centro De Costo'), array('action' => 'edit', $costCenter['CostCenter']['id']));?>
		</li>
	</ul>
</div>