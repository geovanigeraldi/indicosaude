<!-- begin featured -->
<div class="featured">
<h2>Featured News</h2>
<div class="container"><div class="buffer">

	<?php 
	$tmp_query = $wp_query;
	query_posts('cat=' . get_cat_ID(dp_settings('featured1')));
	if (have_posts()) :
	while (have_posts()) : the_post();
	?>
	
	<div class="item">
		<?php dp_attachment_image($post->ID, 'full', 'alt="' . $post->post_title . '"'); ?>
		<div class="text">
		<h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>
		<p><?php echo dp_clean($post->post_content, 200); ?></p>
		</div>
	</div>
	
	<?php 
	endwhile; 
	endif; 
	$wp_query = $tmp_query;
	?>
	
</div></div>
</div>
<!-- end featured -->
