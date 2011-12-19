<div class="roles index">
	<h2><?php echo __('Roles');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th class="actions"><?php echo __('Activo');?></th>
									<th><?php echo $this->Paginator->sort('name');?></th>
							<th><?php echo $this->Paginator->sort('description');?></th>
							<th><?php echo $this->Paginator->sort('created');?></th>
							<th><?php echo $this->Paginator->sort('updated');?></th>
							<th><?php echo $this->Paginator->sort('prueba');?></th>
								<th class="actions"><?php echo __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($roles as $role): ?>
	<tr>
		<td>
			<?php if($role['Role']['is_active']){ ?> 
				 <input type='checkbox' checked='checked' disabled='true' class='checkbox'/> 
			 <?php }else{ ?> 
				 <input type='checkbox' disabled='true' class='checkbox'/>
			 <?php } ?>
		</td>
		<td><?php echo h($role['Role']['name']); ?>&nbsp;</td>
		<td><?php echo h($role['Role']['description']); ?>&nbsp;</td>
		<td><?php echo h($role['Role']['created']); ?>&nbsp;</td>
		<td><?php echo h($role['Role']['updated']); ?>&nbsp;</td>
		<td><?php echo h($role['Role']['prueba']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $role['Role']['id']),array('class'=>'view')); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $role['Role']['id']),array('class'=>'edit')); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $role['Role']['id']), array('class'=>'delete'), __('Esta seguro que quiere eliminar el registro?', $role['Role']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('Agregar Role'), array('action' => 'add')); ?></li>
	</ul>
</div>
