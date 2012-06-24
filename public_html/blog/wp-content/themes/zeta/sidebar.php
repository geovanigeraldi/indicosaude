<!-- BEGIN sidebar -->
<div id="sidebar">

<?php if ( !function_exists('dynamic_sidebar')
|| !dynamic_sidebar(1) ) : ?>

<!-- begin subscription -->
<div class="box">
<h2>Subscription</h2>
<div class="twitter2">
	<p>This is a placeholder text for your twitter Updates #.</p>
	<p class="date">Mar 12, 2010 at 3:33pm</p>
</div>
<ul class="bookmarks">
<li class="mail"><a href="#">Subscribe via Email</a></li>
<li class="rss"><a href="<?php bloginfo('rss2_url'); ?>">Subscribe via RSS Feed</a></li>
<li class="twitter"><a href="#">Follow me on Twitter</a></li>
<li class="facebook"><a href="#">Connect with me on Facebook</a></li>
<li class="linkedin"><a href="#">Connect with me on LinkedIn</a></li>
</ul>
</div>
<!-- end subscription -->

<!-- begin advertisement -->
<div class="box">
<h2>Advertisement</h2>
	<div class="ads">
	<a href="#"><img src="<?php bloginfo('template_url'); ?>/images/ad125x125.jpg" alt="Advertisement" /></a>
	<a href="#"><img src="<?php bloginfo('template_url'); ?>/images/ad125x125.jpg" alt="Advertisement" /></a>
	<a href="#"><img src="<?php bloginfo('template_url'); ?>/images/ad125x125.jpg" alt="Advertisement" /></a>
	<a href="#"><img src="<?php bloginfo('template_url'); ?>/images/ad125x125.jpg" alt="Advertisement" /></a>
	</div>
</div>
<!-- end advertisement -->

<!-- begin popular articles -->
<div class="box">
<h2>Popular Articles</h2>
<ul class="popular">
<?php dp_popular_posts(5); ?>
</ul>
<div class="break"></div>
</div>
<!-- end popular articles -->

<!-- begin flickr photos -->
<div class="box">
<h2>Flickr Photos</h2>
<div class="flickr">
	<?php if (function_exists('get_flickrRSS')) get_flickrRSS(); ?>
</div>
</div>
<!-- end flickr photos -->

<!-- begin featured videos -->
<div class="box">
<h2>Featured Video</h2>
<div class="video">
	<script type="text/javascript">showVideo('<?php echo dp_settings("youtube") ?>');</script>
</div>
</div>
<!-- end featured videos -->

<!-- begin tag cloud -->
<div class="box">
<h2>Tag Cloud</h2>
<div class="tags">
	<?php wp_tag_cloud(); ?>
</div>
</div>
<!-- end tag cloud -->

<?php endif; ?>

</div>
<!-- END sidebar -->

<!-- BEGIN footer -->
<div id="footer">

<div class="top">

	<?php if ( !function_exists('dynamic_sidebar')
	|| !dynamic_sidebar(2) ) : ?>
	
	<!-- begin categories -->
	<div class="box">
	<h2>Categories</h2>
	<ul>
	<?php wp_list_categories('title_li='); ?>
	</ul>
	</div>
	<!-- end categories -->
	
	<!-- begin archives -->
	<div class="box">
	<h2>Archives</h2>
	<ul>
	<?php wp_get_archives('type=monthly'); ?>
	</ul>
	</div>
	<!-- end archives -->
	
	<!-- begin links -->
	<div class="box">
	<?php wp_list_bookmarks('category_before=&category_after=&title_before=<h2>&title_after=</h2>'); ?>
	</div>
	<!-- end links -->
	
	<!-- begin meta -->
	<div class="box">
	<h2>Meta</h2>
	<ul>
	<?php wp_register(); ?>
	<li><?php wp_loginout(); ?></li>
	<li><a href="http://validator.w3.org/check/referer" title="This page validates as XHTML 1.0 Transitional">Valid <abbr title="eXtensible HyperText Markup Language">XHTML</abbr></a></li>
	<li><a href="http://gmpg.org/xfn/"><abbr title="XHTML Friends Network">XFN</abbr></a></li>
	<li><a href="http://wordpress.org/" title="Powered by WordPress, state-of-the-art semantic personal publishing platform.">WordPress</a></li>
	<?php wp_meta(); ?>
	</ul>
	</div>
	<!-- end meta -->
	
	<?php endif; ?>

</div>
