<?php
$favsList = showMovies('favs');
$nonfavsList = showMovies('non_favs');
$testMovies = testMovies();

switch ($testMovies) {
	case "invalid_id":
		echo "<div class='message alert'>";
		echo "<h2>Invalid movie ID: choose a movie-goer from the menu on the right</h2>";
		echo "</div>";
		include 'footer.inc.php';
		exit;
	case "no_id":
		$greeting = showUsers('get_name');
		break;
	case "id_set":
		$singleMovie = showMovies('single');
		break;
}
?>

<nav class="favs_list">
	<h2>Favourites</h2>
	<ul class="favs">
		<?php echo $favsList; ?>
	</ul>
	<div class='trash'></div>            
</nav>

<?php
if ( ! isset($movieID)) {  // show movie list
	echo "<section class='movie_list'>";
	echo $greeting;
	echo "<p class='welcome'>Here are some movies you might like.
	Click on the heart icon to add them to your favourites list.</p>";
	echo "<ul>";
	echo $nonfavsList;
	echo "</ul>";
	echo "</section>";
} else {				// show single movie
	echo "<section class='movie_single'>";
	echo $singleMovie;
	echo "</section>";
}
?>