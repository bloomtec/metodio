<div class="sipDispositivos index">
	<h2><?php echo __('Extensiones');?></h2>
	<div class="search">
		<label>BUSCAR:</label>
		<input type="text" />
		<input type="button" class="submit search-generic" value="Buscar" />
	</div>
	<table cellpadding="0" cellspacing="0">
	<tr>
		<th><?php echo $this->Paginator->sort('abbreviate', 'Abreviado');?></th>
		<th><?php echo $this->Paginator->sort('phone', 'Número');?></th>
		<th class="actions"><?php echo __('Opciones');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($abbreviates as $abbreviate): ?>
	<tr>
		<td><?php echo h($abbreviate['Abbreviate']['abbreviate']); ?>&nbsp;</td>
		<td><?php echo h($abbreviate['Abbreviate']['phone']); ?>&nbsp;</td>
		<td class="actions">
			<?php
				if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', 'view')))) {
					echo $this->Html->link(__('View'), array('action' => 'view', $abbreviate['Abbreviate']['id']),array('class'=>'view'));
				}
				if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', 'edit')))) {
					echo $this->Html->link(__('Edit'), array('action' => 'edit', $abbreviate['Abbreviate']['id']),array('class'=>'edit'));
				}
				if($this -> requestAction('/users/verificarAcceso/' , array('ruta'=>array('controllers', 'SipDispositivos', 'delete')))) {
					echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $abbreviate['Abbreviate']['id']), array('class'=>'delete'), __('Esta seguro que quiere eliminar el registro?', $sipDispositivo['SipDispositivo']['id']));
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
		<li><?php echo $this->Html->link(__('Agregar Extensión'), array('action' => 'add')); ?></li>
	</ul>
</div>
<?php endif; ?>