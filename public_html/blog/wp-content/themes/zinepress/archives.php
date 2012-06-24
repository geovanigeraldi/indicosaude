<?php
/*
Template Name: Archives
*/
?>

<?php get_header(); ?>

<div id="content" class="widecolumn">

<?php include (TEMPLATEPATH . '/searchform.php'); ?>

<h2>Arquivo por Mês:</h2>
	<ul>
		<?php wp_get_archives('type=monthly'); ?>
	</ul>

<h2>Arquivo por Títulos:</h2>
	<ul>
		 <?php wp_list_categories(); ?>
	</ul>

</div>

<?php get_footer(); ?>
