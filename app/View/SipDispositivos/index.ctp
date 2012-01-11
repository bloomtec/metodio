<div class="sipDispositivos index">
	<h2><?php echo __('Sip Dispositivos');?></h2>
	<div class="search">
		<label>BUSCAR:</label>
		<input type="text" />
		<input type="button" class="submit search-generic" value="Search" />
	</div>
	<table cellpadding="0" cellspacing="0">
	<tr>
		<th><?php echo $this->Paginator->sort('name');?></th>
		<th><?php echo $this->Paginator->sort('host');?></th>
		<th><?php echo $this->Paginator->sort('nat');?></th>
		<th><?php echo $this->Paginator->sort('callerid');?></th>
		<th><?php echo $this->Paginator->sort('context');?></th>		
		<th><?php echo $this->Paginator->sort('department_id');?></th>
		<th><?php echo $this->Paginator->sort('cost_center_id');?></th>
		<th class="actions"><?php echo __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($sipDispositivos as $sipDispositivo): ?>
	<tr>
		<td><?php echo h($sipDispositivo['SipDispositivo']['name']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['host']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['nat']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['callerid']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['context']); ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($sipDispositivo['Department']['name'], array('controller' => 'departments', 'action' => 'view', $sipDispositivo['Department']['id'])); ?>
		</td>
		<td>
			<?php echo $this->Html->link($sipDispositivo['CostCenter']['name'], array('controller' => 'cost_centers', 'action' => 'view', $sipDispositivo['CostCenter']['id'])); ?>
		</td>
		<td class="actions">
			<?php
				if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', 'view')))) {
					echo $this->Html->link(__('View'), array('action' => 'view', $sipDispositivo['SipDispositivo']['id']),array('class'=>'view'));
				}
				if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', 'edit')))) {
					echo $this->Html->link(__('Edit'), array('action' => 'edit', $sipDispositivo['SipDispositivo']['id']),array('class'=>'edit'));
				}
				if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', 'delete')))) {
					echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $sipDispositivo['SipDispositivo']['id']), array('class'=>'delete'), __('Esta seguro que quiere eliminar el registro?', $sipDispositivo['SipDispositivo']['id']));
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
		echo $this->Paginator->prev('< ' . __('Anterior'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('Siguiente') . ' >', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>
<?php if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', 'add')))) : ?>
<div class="actions">
	<ul>
		<li><?php echo $this->Html->link(__('Agregar Sip Dispositivo'), array('action' => 'add')); ?></li>
	</ul>
</div>
<?php endif; ?>
