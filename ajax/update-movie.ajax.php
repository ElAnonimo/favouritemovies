<?php

if (isset($_SERVER['HTTP_X_REQUESTED_WITH']) && $_SERVER['HTTP_X_REQUESTED_WITH'] == "XMLHttpRequest") {
	
	require_once '../php-includes/connect.inc.php';

	$thisField = $_POST['this_name'];
	$id = $_POST['id'];
	$newname = $_POST['new_name'];

	// $stmt = $db->prepare("update movies set title = ? where movie_id = ?");
	$stmt = $db->prepare("update movies set $thisField = ? where movie_id = ?");
	$stmt->bind_param('si', $newname, $id);
	$stmt->execute();
	$stmt->close();
	
}

?>