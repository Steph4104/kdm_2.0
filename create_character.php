<?php
  require_once 'head.php';
  require_once 'database.php';
  $con=mysqli_connect($db_host, $db_username, $db_password,$db_name);
  if (mysqli_connect_errno()){
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  mysqli_query($con, "SET SESSION sql_mode = ''");

  $name = $_POST['name'];
  $sexe = $_POST['CharacterInfoSex'];
  $survivol = $_POST['SurvivalPts'];
  $movement = $_POST['movement'];
  $accuracy = $_POST['accuracy'];
  $strength = $_POST['strength'];
  $evasion = $_POST['evasion'];
  $luck = $_POST['luck'];
  $speed = $_POST['speed'];
  $fighting_art_1 = $_POST['fighting_art_1'];
  $fighting_art_2 = $_POST['fighting_art_2'];
  $fighting_art_3 = $_POST['fighting_art_3'];
  $disorder_1 = $_POST['disorder_1'];
  $disorder_2 = $_POST['disorder_2'];
  $disorder_3 = $_POST['disorder_3'];
  $other = $_POST['other'];


  $db_name = "INSERT IGNORE INTO `survivors`(`NAME_SURVIVORS`) VALUES ('".$name."')";

if (!mysqli_query($con, $db_name)) {
    echo "Error: " . $db_name . "<br>" . mysqli_error($con);
}

  $id_survivor = $con->insert_id;
  
  $db_sexe = "INSERT INTO `sexe`(`ID_SURVIVOR`,`SEXE`) VALUES ('".$id_survivor."', '".$sexe."')";

if (!mysqli_query($con, $db_sexe)) {
     echo "Error: " . $db_sexe . "<br>" . mysqli_error($con);
}

  $db_survivol = "INSERT INTO `survivol`(`ID_SURVIVOR`,`SURVIVOL`) VALUES ('".$id_survivor."', '".$survivol."')";

if (!mysqli_query($con, $db_survivol)) {
     echo "Error: " . $db_survivol . "<br>" . mysqli_error($con);
}

  $db_primary = "INSERT INTO `primary_stat`(`ID_SURVIVOR`,`MOVEMENT`,`ACCURACY`,`STRENGTH`,`EVASION`,`LUCK`,`SPEED`) VALUES ('".$id_survivor."', '".$movement."', '".$accuracy."', '".$strength."', '".$evasion."', '".$luck."', '".$speed."')";

if (!mysqli_query($con, $db_primary)) {
     echo "Error: " . $db_primary . "<br>" . mysqli_error($con);
}

for ($i = 1; $i <= 3; $i++) {
 $db_fight = "INSERT INTO `fighting_disroder`(`ID_SURVIVOR`,`TYPE`,`ID_ACTION`,`POSITION`) VALUES ('".$id_survivor."', 'fighting', '".${'fighting_art_'.$i}."', '".$i."')";

  if (!mysqli_query($con, $db_fight)) {
       echo "Error: " . $db_fight . "<br>" . mysqli_error($con);
  }

}

for ($i = 1; $i <= 3; $i++) {
 $db_deso = "INSERT INTO `fighting_disroder`(`ID_SURVIVOR`,`TYPE`,`ID_ACTION`,`POSITION`) VALUES ('".$id_survivor."', 'disorder', '".${'disorder_'.$i}."', '".$i."')";

  if (!mysqli_query($con, $db_deso)) {
       echo "Error: " . $db_deso . "<br>" . mysqli_error($con);
  }

}

$db_other = "INSERT INTO `other`(`ID_SURVIVOR`,`OTHER`) VALUES ('".$id_survivor."', '".$other."')";

if (!mysqli_query($con, $db_other)) {
     echo "Error: " . $db_other . "<br>" . mysqli_error($con);
}

$db_armor = "INSERT INTO `armor_stat`(`ID_SURVIVOR`,`HEAD`,`ARMS`,`BODY`,`WAIST`,`LEGS`) VALUES ('".$id_survivor."', '0','0','0','0','0')";

if (!mysqli_query($con, $db_armor)) {
     echo "Error: " . $db_armor . "<br>" . mysqli_error($con);
}

?>
