<?php get_header(); ?>

	<div id="content" class="narrowcolumn">

	<?php if (have_posts()) : ?>

		<?php while (have_posts()) : the_post(); ?>

			<div <?php post_class() ?> id="post-<?php the_ID(); ?>">
            	<div class="post-wr">
            	<div class="post-foot">
                <div class="post-body">
				<div class="date-comments">
               		 <div class="comments"><?php comments_popup_link('0', '1', '%'); ?></div>
               		 <div class="date-stamp"><div class="date"><?php the_time('j ') ?></div><div class="month"><?php the_time('M') ?></div> </div>	
                </div>

              
                <h2><a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>"><?php the_title(); ?></a></h2>
				

				<div class="entry">
					<?php the_content('Read the rest of this entry &raquo;'); ?>
				</div>

				
			</div>
            </div>
            </div>
            </div>

		<?php endwhile; ?>

	<?php else : ?>

		<h2 class="center">Not Found</h2>
		<p class="center">Sorry, but you are looking for something that isn't here.</p>
		<?php get_search_form(); ?>

	<?php endif; ?>
<div class="pagination"><?php if(function_exists('wp_pagenavi')) { wp_pagenavi(); } ?></div>
	</div>

<?php get_sidebar(); ?>

<?php get_footer(); ?>
