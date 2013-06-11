<?php

$db = new PDO("mysql:127.0.0.1",  'root', 'vagrant');

$results = $db->query('SELECT name FROM phplx.test');

foreach ($results as $row) {
    printf('<p>%s</p>', $row['name']);
}
