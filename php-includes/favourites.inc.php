<?php $favsList = showMovies('favs'); ?>

<nav class="favs_list">
	<h2>Favourites</h2>
	<ul class="favs">
		<?php echo $favsList; ?>
	</ul>
	<div class='trash'></div>            
</nav>