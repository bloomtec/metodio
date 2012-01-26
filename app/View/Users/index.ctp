<div class="users index">
	<h2><?php echo __('Usuarios');?></h2>
	<div class="search">
		<label>BUSCAR:</label>
		<input type="text" class="text-search-generic" />
		<input type="button" class="submit search-generic" value="Buscar" />
	</div>
	<table cellpadding="0" cellspacing="0">
	<tr>
		<th class="actions"><?php echo __('Activo');?></th>
		<th><?php echo $this->Paginator->sort('role_id', 'Rol');?></th>
		<th><?php echo $this->Paginator->sort('username', 'Usuario');?></th>
		<th><?php echo $this->Paginator->sort('created', 'Creado');?></th>
		<th><?php echo $this->Paginator->sort('updated', 'Modificado');?></th>
		<th class="actions"><?php echo __('Opciones');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($users as $user): ?>
	<tr>
		<td>
			<?php if($user['User']['updated']){ ?> 
				 <input type='checkbox' checked='checked' disabled='true' class='checkbox'/> 
			 <?php }else{ ?> 
				 <input type='checkbox' disabled='true' class='checkbox'/>
			 <?php } ?>
		</td>
		<td>
			<?php echo $this->Html->link($user['Role']['name'], array('controller' => 'roles', 'action' => 'view', $user['Role']['id'])); ?>
		</td>
		<td><?php echo h($user['User']['username']); ?>&nbsp;</td>
		<td><?php echo h($user['User']['created']); ?>&nbsp;</td>
		<td><?php echo h($user['User']['updated']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $user['User']['id']),array('class'=>'view')); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $user['User']['id']),array('class'=>'edit')); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $user['User']['id']), array('class'=>'delete'), __('Esta seguro que quiere eliminar el registro?', $user['User']['id'])); ?>
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
<div class="actions">
	<ul>
		<li><?php echo $this->Html->link(__('Crear Usuario'), array('action' => 'add')); ?></li>
	</ul>
</div>
