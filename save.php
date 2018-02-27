<?php

$info = json_decode($_POST["info"], false);
require_once 'database.php';
$con=mysqli_connect($db_host, $db_username, $db_password,$db_name);

	switch ($info->id) {
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
    case 'SurvivalEncourage':
        $table = 'action';
        $name = 'ENCOURAGE';
        break;
    case 'SurvivalSurge':
        $table = 'action';
        $name = 'SURGE';
        break;
    case 'NoSurvival':
        $table = 'survivol';
        $name = 'SPEND';
        break;
    case 'weapon':
        $table = 'w_proficiency';
        $name = 'TYPE';
        break;
    case 'courage_1':
    case 'courage_2':
    case 'courage_3':
        $table = 'courage';
        $name = 'OPTION_COURAGE';
        break;
    case 'understanding_1':
    case 'understanding_2':
    case 'undestanding_3':
        $table = 'understanding';
        $name = 'OPTION_UNDERSTANDING';
        break;
    case 'understanding_other':
        $table = 'understanding';
        $name = 'OTHER';
        break;
    default:
        break;
}

$sql = "UPDATE ".$table." SET ".$name."='".$info->value."' WHERE ID_SURVIVOR='".$info->character."'";

if ($con->query($sql) === TRUE) {
    echo "Record updated successfully";
    error_log('sucess');
} else {
    error_log( "Error updating record: " . $con->error);
}

?>
