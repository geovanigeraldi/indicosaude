<?php get_header(); ?>

<!-- BEGIN content -->
<div id="content">

	<?php include("featured.php"); ?>
	
	<?php
	if (have_posts()) :
	while (have_posts()) : the_post(); 
	?>
	
	<!-- begin post -->
	<div class="post">
	<h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
	<span class="author"><?php the_author_posts_link(); ?></span>
	<span class="date"><a href="#"><?php the_time('F j, Y') ?></a></span>
	<div class="break"></div>
	<a href="<?php the_permalink(); ?>" class="thumb"><?php dp_attachment_image($post->ID, 'thumbnail', 'alt="' . $post->post_title . '"'); ?></a>
	<?php the_excerpt(); ?>
	<div class="details">
		<p class="category"><?php the_category(', ') ?></p>
		<p class="comments"><?php comments_popup_link('No Comments', '1 Comment', '% Comments'); ?></p>
	</div>
	<div class="break"></div>
	</div>
	<!-- end post -->
	
	<?php endwhile; ?>
	<p class="postnav">
		<?php next_posts_link('&laquo; Older Entries'); ?> &nbsp; 
		<?php previous_posts_link('Newer Entries &raquo;'); ?>
	</p>
	<?php else : ?>
	<div class="notfound">
		<h2>Not Found</h2>
		<p>Sorry, but you are looking for something that is not here.</p>
	</div>
	<?php endif; ?>

</div>
<!-- END content -->
	
<?php get_sidebar(); get_footer(); ?>
