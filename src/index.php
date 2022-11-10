<?php

$mysqli = new mysqli("mysql", "matt", "matt", "matt");

$result = $mysqli->query("SELECT null as row");

$row = $result->fetch_assoc();
if ($row) {
  var_dump($row);
  echo $row['row'] === null;
}
