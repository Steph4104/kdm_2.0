<?php
//error_reporting(E_ALL);
//var_dump($_SERVER);
$survivor_id = 1;
$post_data = $_POST['data'];
error_log($post_data);

require_once 'database.php';
$con=mysqli_connect($db_host, $db_username, $db_password,$db_name);

$info = explode(" ", $post_data);

error_log($info['0']);
error_log($info['1']);
error_log($info['2']);



	switch ($info['0']) {
    case 'CharcterInfoName':
        $table = 'survivors';
        $name = 'NAME_SURVIVORS';

        break;
    case 'CharcterInfoBirth':
        $table = 'born';
        $name = 'YEARS';
        break;
    case 'CharacterInfoSex1':
    case 'CharacterInfoSex2':
        $table = 'sexe';
        $name = 'SEXE';
        break;
    case 'CharacterInfoDead':
        $table = 'dead';
        $name = 'DEAD';
        break;
    case 'SurvivalPts':
        $table = 'survivol';
        $name = 'SURVIVOL';
        break;
    case 'SurvivalDodge':
        $table = 'action';
        $name = 'DODGE';
        break;
    case 'SurvivalDash':
        $table = 'action';
        $name = 'DASH';
        break;
    default:
        break;
}


$sql = "UPDATE ".$table." SET ".$name."='".$info['1']."' WHERE ID_SURVIVOR='".$info['2']."'";

if ($con->query($sql) === TRUE) {
    echo "Record updated successfully";
    error_log('sucess');
} else {
    error_log( "Error updating record: " . $con->error);
}

?>
