<?php
  require_once 'head.php';
  require_once 'database.php';
  $con=mysqli_connect($db_host, $db_username, $db_password,$db_name);
  if (mysqli_connect_errno()){
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

  $name = $_POST['name'];
  // $sexe = $_POST['CharacterInfoSex'];
  // $survival = $_POST['SurvivalPts'];
  // $movement = $_POST['movement'];
  // $accuracy = $_POST['accuracy'];
  // $strength = $_POST['strength'];
  // $evasion = $_POST['evasion'];
  // $luck = $_POST['luck'];
  // $speed = $_POST['speed'];
  // $fighting_art_1 = $_POST['fighting_art_1'];
  // $fighting_art_2 = $_POST['fighting_art_2'];
  // $fighting_art_3 = $_POST['fighting_art_3'];
  // $disorder_1 = $_POST['disorder_1'];
  // $disorder_2 = $_POST['disorder_2'];
  // $disorder_3 = $_POST['disorder_3'];
  // $other = $_POST['other'];


  $q = "INSERT INTO `survivors`(`NAME_SURVIVORS`) VALUES ('".$name."')";

  if (!$con->query($q)) {
      echo "INSERT failed: (" . $dbc->errno . ") " . $con->error;
  }
  echo "Newest user id = ",$con->insert_id;
  echo $name;

?>
