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
							<th><?php echo $this->Paginator->sort('type');?></th>
							<th><?php echo $this->Paginator->sort('accountcode');?></th>
							<th><?php echo $this->Paginator->sort('amaflags');?></th>
							<th><?php echo $this->Paginator->sort('callgroup');?></th>
							<th><?php echo $this->Paginator->sort('callerid');?></th>
							<th><?php echo $this->Paginator->sort('notifyhold');?></th>
							<th><?php echo $this->Paginator->sort('notifybusy');?></th>
							<th><?php echo $this->Paginator->sort('notifyringing');?></th>
							<th><?php echo $this->Paginator->sort('allowsubscribe');?></th>
							<th><?php echo $this->Paginator->sort('subscribecontext');?></th>
							<th><?php echo $this->Paginator->sort('call-limit');?></th>
							<th><?php echo $this->Paginator->sort('cancallforward');?></th>
							<th><?php echo $this->Paginator->sort('canreinvite');?></th>
							<th><?php echo $this->Paginator->sort('context');?></th>
							<th><?php echo $this->Paginator->sort('defaultip');?></th>
							<th><?php echo $this->Paginator->sort('dtmfmode');?></th>
							<th><?php echo $this->Paginator->sort('fromuser');?></th>
							<th><?php echo $this->Paginator->sort('fromdomain');?></th>
							<th><?php echo $this->Paginator->sort('insecure');?></th>
							<th><?php echo $this->Paginator->sort('language');?></th>
							<th><?php echo $this->Paginator->sort('mailbox');?></th>
							<th><?php echo $this->Paginator->sort('asterisk.voicemessages');?></th>
							<th><?php echo $this->Paginator->sort('md5secret');?></th>
							<th><?php echo $this->Paginator->sort('deny');?></th>
							<th><?php echo $this->Paginator->sort('permit');?></th>
							<th><?php echo $this->Paginator->sort('mask');?></th>
							<th><?php echo $this->Paginator->sort('musiconhold');?></th>
							<th><?php echo $this->Paginator->sort('pickupgroup');?></th>
							<th><?php echo $this->Paginator->sort('qualify');?></th>
							<th><?php echo $this->Paginator->sort('regexten');?></th>
							<th><?php echo $this->Paginator->sort('restrictcid');?></th>
							<th><?php echo $this->Paginator->sort('rtptimeout');?></th>
							<th><?php echo $this->Paginator->sort('rtpholdtimeout');?></th>
							<th><?php echo $this->Paginator->sort('secret');?></th>
							<th><?php echo $this->Paginator->sort('setvar');?></th>
							<th><?php echo $this->Paginator->sort('disallow');?></th>
							<th><?php echo $this->Paginator->sort('allow');?></th>
							<th><?php echo $this->Paginator->sort('fullcontact');?></th>
							<th><?php echo $this->Paginator->sort('ipaddr');?></th>
							<th><?php echo $this->Paginator->sort('port');?></th>
							<th><?php echo $this->Paginator->sort('regseconds');?></th>
							<th><?php echo $this->Paginator->sort('t38pt_usertpsource');?></th>
							<th><?php echo $this->Paginator->sort('registertrying');?></th>
							<th><?php echo $this->Paginator->sort('transport');?></th>
							<th><?php echo $this->Paginator->sort('lastms');?></th>
							<th><?php echo $this->Paginator->sort('regserver');?></th>
							<th><?php echo $this->Paginator->sort('username');?></th>
							<th><?php echo $this->Paginator->sort('useragent');?></th>
							<th><?php echo $this->Paginator->sort('exten');?></th>
							<th><?php echo $this->Paginator->sort('priority');?></th>
					<th class="actions"><?php echo __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($sipDispositivos as $sipDispositivo): ?>
	<tr>
		<td><?php echo h($sipDispositivo['SipDispositivo']['name']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['host']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['nat']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['type']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['accountcode']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['amaflags']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['callgroup']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['callerid']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['notifyhold']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['notifybusy']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['notifyringing']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['allowsubscribe']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['subscribecontext']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['call-limit']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['cancallforward']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['canreinvite']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['context']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['defaultip']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['dtmfmode']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['fromuser']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['fromdomain']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['insecure']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['language']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['mailbox']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['asterisk.voicemessages']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['md5secret']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['deny']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['permit']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['mask']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['musiconhold']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['pickupgroup']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['qualify']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['regexten']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['restrictcid']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['rtptimeout']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['rtpholdtimeout']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['secret']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['setvar']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['disallow']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['allow']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['fullcontact']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['ipaddr']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['port']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['regseconds']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['t38pt_usertpsource']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['registertrying']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['transport']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['lastms']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['regserver']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['username']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['useragent']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['exten']); ?>&nbsp;</td>
		<td><?php echo h($sipDispositivo['SipDispositivo']['priority']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $sipDispositivo['SipDispositivo']['id']),array('class'=>'view')); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $sipDispositivo['SipDispositivo']['id']),array('class'=>'edit')); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $sipDispositivo['SipDispositivo']['id']), array('class'=>'delete'), __('Esta seguro que quiere eliminar el registro?', $sipDispositivo['SipDispositivo']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('Agregar Sip Dispositivo'), array('action' => 'add')); ?></li>
	</ul>
</div>
