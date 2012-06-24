<?php get_header(); ?>

<div id="content" class="narrowcolumn">
  <h2 class="pagetitle">Search Results</h2>
  <div class="post-wr">
    <div class="post-foot">
      <div class="post-body">
        <?php if (have_posts()) : ?>
        <?php while (have_posts()) : the_post(); ?>
        <div <?php post_class() ?>>
          <h3 id="post-<?php the_ID(); ?>"><a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>">
            <?php the_title(); ?>
            </a></h3>
          <small>
          <?php the_time('l, F jS, Y') ?>
          </small> </div>
        <?php endwhile; ?>
        <?php else : ?>
        <h2 class="center">No posts found. Try a different search?</h2>
        <?php get_search_form(); ?>
        <?php endif; ?>
      </div>
    </div>
  </div>
  <div class="pagination">
    <?php if(function_exists('wp_pagenavi')) { wp_pagenavi(); } ?>
  </div>
</div>
<?php get_sidebar(); ?>
<?php get_footer(); ?>