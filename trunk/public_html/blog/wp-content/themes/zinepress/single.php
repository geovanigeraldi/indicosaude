<?php get_header(); ?>

	<div id="content" class="widecolumn">

	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

		<div class="post" id="post-<?php the_ID(); ?>">
			<h2><a href="<?php echo get_permalink() ?>" class="single" rel="bookmark" title="Link Permanente: <?php the_title_attribute(); ?>"><?php the_title(); ?></a></h2>
			<span class="undertitle">Postado por <?php the_author(); ?> em <?php the_time('F jS, Y') ?></span>

			<div class="entry">
				<?php the_content('<p class="serif">Leia Mais &raquo;</p>'); ?>

				<?php wp_link_pages(array('before' => '<p><strong>Páginas:</strong> ', 'after' => '</p>', 'next_or_number' => 'number')); ?>
				<?php the_tags( '<p>Tags: ', ', ', '</p>'); ?>

				<p class="postmeta">
					<small>
						Postado em
						<?php /* This is commented, because it requires a little adjusting sometimes.
							You'll need to download this plugin, and follow the instructions:
							http://binarybonsai.com/archives/2004/08/17/time-since-plugin/ */
							/* $entry_datetime = abs(strtotime($post->post_date) - (60*120)); echo time_since($entry_datetime); echo ' ago'; */ ?>
						<?php the_time('l, F jS, Y') ?> as <?php the_time() ?>
						na Categoria: <?php the_category(', ') ?>.
						Você pode acompanhar os comentários através de nosso <?php comments_rss_link('RSS 2.0'); ?> feed RSS.

						<?php if (('open' == $post-> comment_status) && ('open' == $post->ping_status)) {
							// Both Comments and Pings are open ?>
							Você pode <a href="#respond">deixar uma resposta</a>, ou <a href="<?php trackback_url(); ?>" rel="trackback">trackback</a> de seu site.

						<?php } elseif (!('open' == $post-> comment_status) && ('open' == $post->ping_status)) {
							// Only Pings are Open ?>
							Respostas fechadas, mas você pode fazer um <a href="<?php trackback_url(); ?> " rel="trackback">trackback</a> de seu site.

						<?php } elseif (('open' == $post-> comment_status) && !('open' == $post->ping_status)) {
							// Comments are open, Pings are not ?>
							Você pode ir ao final e deixar uma resposta. Ping não permitido aqui.

						<?php } elseif (!('open' == $post-> comment_status) && !('open' == $post->ping_status)) {
							// Neither Comments, nor Pings are open ?>
							Comentários e ping fechados.

						<?php } edit_post_link('Editar.','',''); ?>

					</small>
				</p>

			</div>
		</div>

	<?php comments_template(); ?>

	<?php endwhile; else: ?>

		<p>Nada que vá de encontro a sua busca.</p>

<?php endif; ?>

	</div>

<?php get_sidebar(); ?>
<?php get_footer(); ?>
