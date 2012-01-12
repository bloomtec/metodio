<div class="departments index">
	<h2><?php echo __('Departamentos');?></h2>
	<div class="search">
		<label>BUSCAR:</label>
		<input type="text" />
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
	foreach ($departments as $department): ?>
	<tr>
		<td><?php echo h($department['Department']['name']); ?>&nbsp;</td>
		<td><?php echo h($department['Department']['description']); ?>&nbsp;</td>
		<td><?php echo h($department['Department']['created']); ?>&nbsp;</td>
		<td><?php echo h($department['Department']['updated']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $department['Department']['id']),array('class'=>'view')); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $department['Department']['id']),array('class'=>'edit')); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $department['Department']['id']), array('class'=>'delete'), __('Esta seguro que quiere eliminar el registro?', $department['Department']['id'])); ?>
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
		echo $this->Paginator->prev('< ' . __('Anterior'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('Siguiente') . ' >', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>
<div class="actions">
	<ul>
		<li><?php echo $this->Html->link(__('Agregar Departmento'), array('action' => 'add')); ?></li>
	</ul>
</div>
