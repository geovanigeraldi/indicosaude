<?php
/**
 * Index Template
 *
 * This is the default template.  It is used when a more specific template can't be found to display
 * posts.  It is unlikely that this template will ever be used, but there may be rare cases.
 *
 * @package News
 * @subpackage Template
 */

get_header(); ?>

	<?php do_atomic( 'before_content' ); // Before content hook ?>

	<div id="content">

		<?php do_atomic( 'open_content' ); // Open content hook ?>

		<div class="hfeed">

			<?php get_template_part( 'loop-meta' ); ?>

			<?php if ( have_posts() ) : ?>

				<?php while ( have_posts() ) : the_post(); ?>

					<?php do_atomic( 'before_entry' ); // Before entry hook ?>

					<div id="post-<?php the_ID(); ?>" class="<?php hybrid_entry_class(); ?>">

						<?php do_atomic( 'open_entry' ); // Open entry hook ?>

						<?php echo apply_atomic_shortcode( 'entry_utility', '<div class="entry-utility">' . __( '[entry-popup-shortlink]', hybrid_get_textdomain() ) . '</div>' ); ?>

						<?php echo apply_atomic_shortcode( 'entry_title', '[entry-title]' ); ?>

						<?php echo apply_atomic_shortcode( 'byline', '<div class="byline">' . __( 'Postado por [entry-author] em [entry-published] [entry-terms taxonomy="category" before=" - categorias "] [entry-edit-link before=" | "]', hybrid_get_textdomain() ) . '</div>' ); ?>

						<div class="entry-content">
							<?php the_content( __( 'Continue reading <span class="meta-nav">&rarr;</span>', hybrid_get_textdomain() ) ); ?>
							<?php wp_link_pages( array( 'before' => '<p class="page-links">' . __( 'Pages:', hybrid_get_textdomain() ), 'after' => '</p>' ) ); ?>
						</div><!-- .entry-content -->

						<?php echo apply_atomic_shortcode( 'entry_meta', '<div class="entry-meta">' . __( '<span class="share">Compartilhe:</span> [entry-facebook-link] [entry-twitter-link]', hybrid_get_textdomain() ) . '</div>' ); ?>

						<?php do_atomic( 'close_entry' ); // Close entry hook ?>

					</div><!-- .hentry -->

					<?php do_atomic( 'after_entry' ); // After entry hook ?>

				<?php endwhile; ?>

			<?php endif; ?>

		</div><!-- .hfeed -->

		<?php do_atomic( 'close_content' ); // Close content hook ?>

		<?php get_template_part( 'loop-nav' ); ?>

	</div><!-- #content -->
	<div class="news">
		<div class="news_head">
			<h2>CONTATOS</h2>
		</div>
		<div class="newsslider">
			<div class="newsslidercontent" id="newsslider">
				<div style="width: 99%;clear: right;">
                	<div><b><h3>PLANTÃO DE VENDAS <br> 4103-0261</h3></b></div>
				</div>
				<div id="newssection-1" class="newssection upper">
					<div class="news_date">ESCRITÓRIO<br /></div>
					<div class="news_text">(61)3223-2925</div>
					
					<div class="news_date">CLARO<br /></div>
					<div class="news_text">(61)9304-3648</div>
					
					<div class="news_date">OI<br /></div>                                
					<div class="news_text">(61)8626-0601</div>
					
					<div class="news_date">TIM<br /></div>                                
					<div class="news_text">(61)8229-4177</div>
					
					<div class="news_date">VIVO<br /></div>                                
					<div class="news_text">(61)9824-0601</div>
					
					<div class="news_date">
						<br />
						<a href="mailto:contato@indicosaude.com.br">contato@indicosaude.com.br</a>
						<br /><br />
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php do_atomic( 'after_content' ); // After content hook ?>


<?php get_footer(); ?>