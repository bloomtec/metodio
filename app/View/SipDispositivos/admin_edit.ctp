<div class="sipDispositivos form">
<?php echo $this->Form->create('SipDispositivo');?>
	<fieldset>
		<h2><?php echo __('Modificar Sip Dispositivo'); ?></h2>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('name');
		echo $this->Form->input('host');
		echo $this->Form->input('nat');
		echo $this->Form->input('type');
		echo $this->Form->input('accountcode');
		echo $this->Form->input('amaflags');
		echo $this->Form->input('callgroup');
		echo $this->Form->input('callerid');
		echo $this->Form->input('notifyhold');
		echo $this->Form->input('notifybusy');
		echo $this->Form->input('notifyringing');
		echo $this->Form->input('allowsubscribe');
		echo $this->Form->input('subscribecontext');
		echo $this->Form->input('call-limit');
		echo $this->Form->input('cancallforward');
		echo $this->Form->input('canreinvite');
		echo $this->Form->input('context');
		echo $this->Form->input('defaultip');
		echo $this->Form->input('dtmfmode');
		echo $this->Form->input('fromuser');
		echo $this->Form->input('fromdomain');
		echo $this->Form->input('insecure');
		echo $this->Form->input('language');
		echo $this->Form->input('mailbox');
		echo $this->Form->input('asterisk.voicemessages');
		echo $this->Form->input('md5secret');
		echo $this->Form->input('deny');
		echo $this->Form->input('permit');
		echo $this->Form->input('mask');
		echo $this->Form->input('musiconhold');
		echo $this->Form->input('pickupgroup');
		echo $this->Form->input('qualify');
		echo $this->Form->input('regexten');
		echo $this->Form->input('restrictcid');
		echo $this->Form->input('rtptimeout');
		echo $this->Form->input('rtpholdtimeout');
		echo $this->Form->input('secret');
		echo $this->Form->input('setvar');
		echo $this->Form->input('disallow');
		echo $this->Form->input('allow');
		echo $this->Form->input('fullcontact');
		echo $this->Form->input('ipaddr');
		echo $this->Form->input('port');
		echo $this->Form->input('regseconds');
		echo $this->Form->input('t38pt_usertpsource');
		echo $this->Form->input('registertrying');
		echo $this->Form->input('transport');
		echo $this->Form->input('lastms');
		echo $this->Form->input('regserver');
		echo $this->Form->input('username');
		echo $this->Form->input('useragent');
		echo $this->Form->input('exten');
		echo $this->Form->input('priority');
	?>
	</fieldset>
<?php echo $this->Html->link(__('Cancelar'),array('action'=>'index'),array('class'=>'cancelar'));?>
<?php echo $this->Form->end(__('Guardar'));?>
</div>