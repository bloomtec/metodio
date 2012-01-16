<div class="cdrs index">
	<h2><?php echo __('Informe');?></h2>
	<table cellpadding="0" cellspacing="0">
		<tr>
			<th><?php echo $this -> Paginator -> sort('calldate', 'Fecha');?></th>
			<th><?php echo $this -> Paginator -> sort('clid', 'Usuario');?></th>
			<th><?php echo $this -> Paginator -> sort('src', 'Origen');?></th>
			<th><?php echo $this -> Paginator -> sort('dst', 'Destino');?></th>
			<th><?php echo $this -> Paginator -> sort('channel', 'Canal Origen');?></th>
			<th><?php echo $this -> Paginator -> sort('dstchannel', 'Canal Destino');?></th>
			<th><?php echo $this -> Paginator -> sort('duration', 'Duración');?></th>
			<th><?php echo $this -> Paginator -> sort('disposition', 'Estado');?></th>
		</tr>
		<?php
			$i = 0;
			foreach ($cdrs as $cdr):
		?>
		<tr>
			<td><?php echo h($cdr['Cdr']['calldate']);?>&nbsp;</td>
			<td><?php echo h($cdr['Cdr']['clid']);?>&nbsp;</td>
			<td><?php echo h($cdr['Cdr']['src']);?>&nbsp;</td>
			<td><?php echo h($cdr['Cdr']['dst']);?>&nbsp;</td>
			<td><?php echo h($cdr['Cdr']['channel']);?>&nbsp;</td>
			<td><?php echo h($cdr['Cdr']['dstchannel']);?>&nbsp;</td>
			<td><?php echo h($cdr['Cdr']['duration']);?>&nbsp;</td>
			<td><?php echo h($cdr['Cdr']['disposition']);?>&nbsp;</td>
		</tr>
		<?php endforeach;?>
	</table>
	<div class="paging">
		<!--<p>
		<?php
		echo $this->Paginator->counter(array(
		'format' => __('Page {:page} of {:pages}, mostrando {:current} registro de {:count} totales, comenzando en el registro record {:start}, hasta el registro {:end}')
		));
		?>	</p>-->
		<?php
			echo $this -> Paginator -> prev('< ' . __('Anterior'), array(), null, array('class' => 'prev disabled'));
			echo $this -> Paginator -> numbers(array('separator' => ''));
			echo $this -> Paginator -> next(__('Siguiente') . ' >', array(), null, array('class' => 'next disabled'));
		?>
	</div>
</div>
