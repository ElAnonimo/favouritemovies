<?php
$nonfavsList = showMovies('non_favs');
$greeting = showUsers('get_name');
?>

<section class="movie_list">
	<?php echo $greeting; ?>
	<p class="welcome">Here are some movies you might like.
	Click on the heart icon to add them to your favourites list.</p>
	<ul>
		<li>
			<?php echo $nonfavsList; ?>
		</li>
	</ul>
</section>