<form method="get" id="searchform" action="<?php bloginfo('url'); ?>/">
	<div id="searchbox">
		<input type="text" value="Buscar..." onfocus="if (this.value == 'Buscar...') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Buscar...';}" name="s" id="s" />
		<input type="image" src="<?php bloginfo('stylesheet_directory'); ?>/images/searchgo.gif" id="searchsubmit" alt="Search" title="Buscar" />
	</div>
</form>
