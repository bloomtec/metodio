<div class="cdrs index">
	<h2><?php echo __('Informe');?></h2>
	<div class="csv-export">
		<?php
			$fields = 'calldate,clid,src,dst,channel,dstchannel,duration,disposition,department,cost_center';
			$headers = 'Fecha Y Hora,Usuario,Origen,Destino,Canal Origen,Canal Destino,Duración,Estado,Departamento,Centro De Costo';
			//echo $this -> Html -> link('Exportar ésta página a CSV', array('action' => 'CSVExport', 'type'=>'page', 'fields'=>$fields, 'headers'=>$headers));
			echo $this -> Html -> link('Exportar el resultado a CSV', array('action' => 'CSVExport', 'type'=>'full', 'fields'=>$fields, 'headers'=>$headers),array('class'=>'csv'));
		?>
	</div>
	<table cellpadding="0" cellspacing="0">
		<tr>
			<th><?php echo $this -> Paginator -> sort('calldate', 'Fecha Y Hora');?></th>
			<th><?php echo $this -> Paginator -> sort('clid', 'Usuario');?></th>
			<th><?php echo $this -> Paginator -> sort('src', 'Origen');?></th>
			<th><?php echo $this -> Paginator -> sort('dst', 'Destino');?></th>
			<th><?php echo $this -> Paginator -> sort('channel', 'Canal Origen');?></th>
			<th><?php echo $this -> Paginator -> sort('dstchannel', 'Canal Destino');?></th>
			<th><?php echo $this -> Paginator -> sort('billsec', 'Tiempo Facturado');?></th>
			<th><?php echo $this -> Paginator -> sort('disposition', 'Estado');?></th>
			<!--
			<th><?php //echo $this -> Paginator -> sort('department', 'Departamento');?></th>
			-->
			<th><?php echo $this -> Paginator -> sort('cost_center', 'Centro De Costo');?></th>
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
			<td><?php echo h($cdr['Cdr']['billsec']);?>&nbsp;</td>
			<td><?php echo h($cdr['Cdr']['disposition']);?>&nbsp;</td>
			<!--
			<td><?php //echo h($cdr['Cdr']['department']);?>&nbsp;</td>
			-->
			<td><?php echo h($cdr['Cdr']['cost_center']);?>&nbsp;</td>
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
		echo $this->Paginator->first('<<  ', array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->prev('< ' . __('Anterior'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('Siguiente') . ' >', array(), null, array('class' => 'next disabled'));
		echo $this->Paginator->last('>>  ', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>
