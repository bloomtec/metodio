<div id="header">
	<a class="logo" href="/"><img src="/img/logo_header.png" /></a>
	<ul id='user-menu'>
		<?php if(!$this -> Session -> read("Auth.User.id")){?>
			<li>
				<?php echo $this -> Html -> link(__('Sign in',true),array("controller"=>"users","action"=>"login"),array('class'=>'ajax-login')); ?>
				<?php echo $this -> element('ajax-login'); ?>
			</li>
			<li><?php echo $this -> Html -> link(__('Register',true),array("controller"=>"users","action"=>"register")); ?></li>
		<?php }else{?>
			<li> <li><?php echo $this -> Html -> link(__('Log out',true),array("controller"=>"users","action"=>"logout")); ?></li> </li>
		<?php } ?>
	</ul>
</div>