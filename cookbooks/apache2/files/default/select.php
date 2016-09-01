<?php

$host = "host=192.168.131.174";
$port = "port=5432";
$database = "dbname=swn";
$auth = "user=pi password=security++";

$db = pg_connect("$host $port $database $auth");

if (!$db){
  echo ('Could not connect: ' . pg_last_error());
}

$result = pg_query($db, "SELECT * FROM devices");
if (!$result) {
  echo "An error occurred.\n";
  exit;
}

while ($row = pg_fetch_row($result)) {
  echo "id: $row[0]  devices: $row[1]" ;
  echo "<br />\n";
}
echo "database server2";
pg_close($db);

?>
