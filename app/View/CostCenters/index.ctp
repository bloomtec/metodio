<div class="costCenters index">
	<h2><?php echo __('Centros De Costo');?></h2>
	<div class="search">
		<label>BUSCAR:</label>
		<input type="text" class="text-search-generic" />
		<input type="button" class="submit search-generic" value="Buscar" />
	</div>
	<table cellpadding="0" cellspacing="0">
	<tr>
		<th><?php echo $this->Paginator->sort('name', 'Nombre');?></th>
		<th><?php echo $this->Paginator->sort('description', 'Descripción');?></th>
		<th><?php echo $this->Paginator->sort('created', 'Creado');?></th>
		<th><?php echo $this->Paginator->sort('updated', 'Modificado');?></th>
		<th class="actions"><?php echo __('Opciones');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($costCenters as $costCenter): ?>
	<tr>
		<td><?php echo h($costCenter['CostCenter']['name']); ?>&nbsp;</td>
		<td><?php echo h($costCenter['CostCenter']['description']); ?>&nbsp;</td>
		<td><?php echo h($costCenter['CostCenter']['created']); ?>&nbsp;</td>
		<td><?php echo h($costCenter['CostCenter']['updated']); ?>&nbsp;</td>
		<td class="actions">
			<?php
				if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters', 'view')))) {
					echo $this->Html->link(__('View'), array('action' => 'view', $costCenter['CostCenter']['id']),array('class'=>'view'));
				}
				if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters', 'edit')))) {
					echo $this->Html->link(__('Edit'), array('action' => 'edit', $costCenter['CostCenter']['id']),array('class'=>'edit'));
				}
				if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters', 'delete')))) {
					echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $costCenter['CostCenter']['id']), array('class'=>'delete'), __('Esta seguro que quiere eliminar el registro?', $costCenter['CostCenter']['id']));
				}
			?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>


	<div class="paging">
	<!--<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page {:page} of {:pages}, mostrando {:current} registro de {:count} totales, comenzando en el registro record {:start}, hasta el registro {:end}')
	));
	?>	</p>-->
	<?php
		echo $this->Paginator->first('<<  ', array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->prev('< ' . __('Anterior'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('Siguiente') . ' >', array(), null, array('class' => 'next disabled'));
		echo $this->Paginator->last('>>  ', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>
<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'CostCenters', 'add')))) : ?>
<div class="actions">
	<ul>
		<li><?php echo $this->Html->link(__('Agregar Centro De Costo'), array('action' => 'add')); ?></li>
	</ul>
</div>
<?php endif; ?>