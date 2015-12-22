<?php

// Called from main.inc.php (formerly movies.inc.php)

function testMovies() {
    
    global $db, $movieID;
	
	$sql = "select * from movies";
	$result = $db->query($sql);
	$numrows = $result->num_rows;
	
	if ($numrows < 1) {
		return "no_data";
	}
    
    if ( ! isset($movieID)) {
        return "no_id";
    }
    
    if ( ! is_numeric($movieID)) {
        return "invalid_id";
    }
    
    $stmt = $db->prepare("SELECT * FROM movies WHERE movie_id = ?");
    $stmt->bind_param('i', $movieID);
    $stmt->execute();
    $stmt->store_result();
    $numrows = $stmt->num_rows;
    $stmt->close();
    
    if ($numrows < 1) {
        return "invalid_id";
    } else {
        return "id_set";
    }

}

?>