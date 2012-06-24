<?php get_header(); ?>
	<div id="content" class="narrowcolumn">
		<?php if (have_posts()) : ?>
			<?php while (have_posts()) : the_post(); ?>
				<div class="post" id="post-<?php the_ID(); ?>">
					<div class="postwrapper">
						<a href="<?php the_permalink() ?>" rel="bookmark" title="Leia Mais &#187;"><img src="<?php $key="thumbnail"; echo get_post_meta($post->ID, $key, true); ?>" alt="thumbnail" class="thumbnail" /></a>
						<h2><a href="<?php the_permalink() ?>" rel="bookmark" title="Link Permanente para <?php the_title_attribute(); ?>"><?php the_title(); ?></a></h2>
						<div class="entry">
							<?php the_excerpt(); ?>
						</div>
					</div>
					<div class="postmetadata">
						<span class="thetime"><?php the_time('F jS, Y') ?></span>
						<span class="thecategory"><?php the_category(', ') ?></span>
						<?php edit_post_link('Editar', '<span class="editthispost">', '</span>'); ?>
						<span class="thecomments"><?php comments_popup_link('Sem Comentários &#187;', '1 Comentário &#187;', '% Comentários &#187;'); ?></span>
						<div class="readmore">
							<a href="<?php the_permalink() ?>" rel="bookmark" title="Leia a outra parte desta postagem &#187;">Leia Mais</a>
						</div>
					</div>
				</div>

		<?php endwhile; ?>

				<div class="navigation">
					<div class="navleft"><?php next_posts_link('Mais Antigos') ?></div>
					<div class="navright"><?php previous_posts_link('Mais Recentes') ?></div>
				</div>

	<?php else : ?>

		<h2 class="center">Não Encontrado</h2>
		<p class="center">Desculpe, mas o que você procura não está por aqui.</p>
		<?php include (TEMPLATEPATH . "/searchform.php"); ?>

	<?php endif; ?>

	</div>

<?php get_sidebar(); ?>
<?php get_footer(); ?>