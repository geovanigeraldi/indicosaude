<?php get_header(); ?>

<div id="content" class="narrowcolumn">
  <div class="post-wr">
    <div class="post-foot">
      <div class="post-body">
        <?php if (have_posts()) : while (have_posts()) : the_post(); ?>
        <div class="date-comments">
          <div class="comments">
            <?php comments_number('0', '1', '%'); ?>
          </div>
          <div class="date-stamp">
            <div class="date">
              <?php the_time('j ') ?>
            </div>
            <div class="month">
              <?php the_time('M') ?>
            </div>
          </div>
        </div>
        <div <?php post_class() ?> id="post-<?php the_ID(); ?>">
          
          <div class="tweet-tds">
            <script type="text/javascript">
			  tweetmeme_url = '<?php the_permalink() ?>';

</script>
            <script type="text/javascript" src="http://tweetmeme.com/i/scripts/button.js"></script>
          </div>
          <div class="fb-tds">
         <a name="fb_share" type="box_count" share_url="<?php the_permalink() ?>" href="http://www.facebook.com/sharer.php">Share</a><script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script>
          </div>
          <div class="digg-tds">
            <script type="text/javascript">
digg_url = '<?php the_permalink() ?>';
</script>
            <script src="http://digg.com/tools/diggthis.js" type="text/javascript"></script>
          </div>
          <h2>
            <?php the_title(); ?>
          </h2>
          <div class="entry">
            
            <?php the_content('<p class="serif">Read the rest of this entry &raquo;</p>'); ?>
            <?php wp_link_pages(array('before' => '<p><strong>Pages:</strong> ', 'after' => '</p>', 'next_or_number' => 'number')); ?>
            <?php the_tags( '<p>Tags: ', ', ', '</p>'); ?>
          </div>
        </div>
      </div>
    </div>
  </div>
  <?php comments_template('', true); ?>
  <?php endwhile; else: ?>
  <p>Sorry, no posts matched your criteria.</p>
  <?php endif; ?>
</div>
<?php get_sidebar(); ?>
<?php get_footer(); ?>