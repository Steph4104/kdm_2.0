<?php
  require_once 'database.php';
  $con=mysqli_connect($db_host, $db_username, $db_password,$db_name);
  $survivor_id = $_POST['id'];

  if($_POST['type'] == 'insanity' || $_POST['type'] == 'box_insanity_1'){
    $value = $_POST['value'];
	  $sql = "UPDATE insanity SET INSANITY ='".$value."' WHERE ID_SURVIVOR='".$_POST['id']."'";
    if ($con->query($sql) === TRUE) {
	    error_log('sucess');
	   } else {
	    error_log( "Error updating record: " . $con->error);
	   }
    $insanity = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM insanity WHERE ID_SURVIVOR = $survivor_id"));
	  echo '<input type="text" style="width:5%;" class="form-control update_armor" id="insanity" value='.($insanity['INSANITY'] >= 0 ?  $insanity['INSANITY'] : 0).' >';
	  echo '<input class=".form-check-inline update_armor" type="checkbox" value="-1" id="box_insanity_1"  '.($insanity['INSANITY'] <= -1 ? 'checked' : '').' >';
  
  } else if($_POST['type'] == 'head' || $_POST['type'] == 'box_head_1'){
    $value = $_POST['value'];
	  $sql = "UPDATE armor_stat SET HEAD ='".$value."' WHERE ID_SURVIVOR='".$_POST['id']."'";
    if ($con->query($sql) === TRUE) {
	    error_log('sucess');
	   } else {
	    error_log( "Error updating record: " . $con->error);
	   }
    $head = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM armor_stat WHERE ID_SURVIVOR = $survivor_id"));
	  echo '<input type="text" class="form-control update_armor" id="head" value='.($head['HEAD'] >= 0 ?  $head['HEAD'] : 0).' >';
	  echo '<input class=".form-check-inline update_armor" type="checkbox" value="-1" id="box_head_1"  '.($head['HEAD'] <= -1 ? 'checked' : '').' >';
    echo '<input class=".form-check-inline update_armor" type="hidden" value="-1" id="box_head_1"  '.($head['HEAD'] <= -1 ? 'checked' : '').' >';

  } else if ($_POST['type'] == 'arm' || $_POST['type'] == 'arm_box_1' || $_POST['type'] == 'arm_box_2'){
    $value = $_POST['value'];
    $sql = "UPDATE armor_stat SET ARMS ='".$value."' WHERE ID_SURVIVOR='".$_POST['id']."'";

    if ($con->query($sql) === TRUE) {
      error_log('sucess');
    } else {
      error_log( "Error updating record: " . $con->error);
    }
    $arms = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM armor_stat WHERE ID_SURVIVOR = $survivor_id"));
    echo '<input type="text" class="form-control update_armor" id="arm" value='.($arms['ARMS'] >= 0 ?  $arms['ARMS'] : 0).'>';
    echo' <input class="form-check-input update_armor" type="checkbox" value="-1" id="arm_box_1"'.($arms['ARMS'] < 0 ? 'checked' : '').'>';
    echo' <input class="form-check-input update_armor" type="checkbox" value="-2" id="arm_box_2" '.($arms['ARMS'] < -1 ? 'checked' : '').'>';
  }else if ($_POST['type'] == 'body' || $_POST['type'] == 'body_box_1' || $_POST['type'] == 'body_box_2'){

    $value = $_POST['value'];
    $sql = "UPDATE armor_stat SET BODY ='".$value."' WHERE ID_SURVIVOR='".$_POST['id']."'";

    if ($con->query($sql) === TRUE) {
      error_log('sucess');
    } else {
      error_log( "Error updating record: " . $con->error);
    }
    $body = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM armor_stat WHERE ID_SURVIVOR = $survivor_id"));
    echo '<input type="text" class="form-control update_armor" id="body" value='.($body['BODY'] >= 0 ?  $body['BODY'] : 0).'>';
    echo' <input class="form-check-input update_armor" type="checkbox" value="-1" id="body_box_1" '.($body['BODY'] < 0 ? 'checked' : '').'>';
    echo' <input class="form-check-input update_armor" type="checkbox" value="-2" id="body_box_2"  '.($body['BODY'] < -1 ? 'checked' : '').'>';
  }else if ($_POST['type'] == 'waist' || $_POST['type'] == 'waist_box_1' || $_POST['type'] == 'waist_box_2'){

    $value = $_POST['value'];
    $sql = "UPDATE armor_stat SET WAIST ='".$value."' WHERE ID_SURVIVOR='".$_POST['id']."'";

    if ($con->query($sql) === TRUE) {
      error_log('sucess');
    } else {
      error_log( "Error updating record: " . $con->error);
    }
    $waist = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM armor_stat WHERE ID_SURVIVOR = $survivor_id"));
    echo '<input type="text" class="form-control update_armor" id="waist" value='.($waist['WAIST'] >= 0 ?  $waist['WAIST'] : 0).'>';
    echo' <input class="form-check-input update_armor" type="checkbox" value="-1" id="waist_box_1" '.($waist['WAIST'] < 0 ? 'checked' : '').'>';
    echo' <input class="form-check-input update_armor" type="checkbox" value="-2" id="waist_box_2"  '.($waist['WAIST'] < -1 ? 'checked' : '').'>';

  }else if ($_POST['type'] == 'legs' || $_POST['type'] == 'legs_box_1' || $_POST['type'] == 'legs_box_2'){

    $value = $_POST['value'];
    $sql = "UPDATE armor_stat SET LEGS ='".$value."' WHERE ID_SURVIVOR='".$_POST['id']."'";

    if ($con->query($sql) === TRUE) {
      error_log('sucess');
    } else {
      error_log( "Error updating record: " . $con->error);
    }

    $legs = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM armor_stat WHERE ID_SURVIVOR = $survivor_id"));
    echo '<input type="text" class="form-control update_armor" id="legs" value='.($legs['LEGS'] >= 0 ?  $legs['LEGS'] : 0).'>';
    echo' <input class="form-check-input update_armor" type="checkbox" value="-1" id="legs_box_1" '.($legs['LEGS'] < 0 ? 'checked' : '').'>';
    echo' <input class="form-check-input update_armor" type="checkbox" value="-2" id="legs_box_2"  '.($legs['LEGS'] < -1 ? 'checked' : '').'>';
  }
?>
<script>
  $('.update_armor').off().on('change', function() {
    var itemVal = $(this).val();
    var character = <?php echo $survivor_id; ?>;
    var itemID = $(this).attr('id');

    if(itemID == 'insanity' && itemVal == '3'){
    alert('You are INSANE!');
  }
    if ($(this).is('input:checkbox')){
      switch (itemID) {
        case 'box_insanity_1':
var ischecked= $(this).is(':checked');

    if(!ischecked){
          itemVal = 0;

    alert('uncheckd ' + itemVal);

    }


      break;
        case 'box_head_1':
          var ischecked= $(this).is(':checked');
          if(!ischecked){
            itemVal = 0;
          }
          break;
        case 'arm_box_1':
          var ischecked= $(this).is(':checked');
          if(!ischecked){
            itemVal = 0;
          }
          break;
        case 'arm_box_2':
         var ischecked= $(this).is(':checked');
         if(!ischecked){
            itemVal = -1;
          }
          break;
        case 'body_box_1':
          var ischecked= $(this).is(':checked');
          if(!ischecked){
            itemVal = 0;
          }
          break;
        case 'body_box_2':
          var ischecked= $(this).is(':checked');
          if(!ischecked){
            itemVal = -1;
          }
          break;
        case 'waist_box_1':
          var ischecked= $(this).is(':checked');
          if(!ischecked){
            itemVal = 0;
          }
          break;
        case 'waist_box_2':
          var ischecked= $(this).is(':checked');
          if(!ischecked){
            itemVal = -1;
          }
          break;
        case 'legs_box_1':
          var ischecked= $(this).is(':checked');
          if(!ischecked){
            itemVal = 0;
          }
          break;
        case 'legs_box_2':
          var ischecked= $(this).is(':checked');
          if(!ischecked){
              itemVal = -1;
            }
            break;
      }
    }

   $.ajax({
     url: "update_armor.php",
     type: 'POST',
     data: { value: itemVal, id : character, type: itemID} ,
    }).success(function(data){
      switch (itemID) {
        case 'insanity':
    case 'box_insanity_1':
      var section = '#update_insanity';
      break;
        case 'head':
        case 'box_head_1':
          var section = '#update_head';
          break;
        case 'arm':
        case 'arm_box_1':
        case 'arm_box_2':
          var section = '#update_arms';
          break;
        case 'body':
        case 'body_box_1':
        case 'body_box_2':
          var section = '#update_body';
          break;
            case 'waist':
        case 'waist_box_1':
        case 'waist_box_2':
          var section = '#update_waist';
          break;
        case 'legs':
        case 'legs_box_1':
        case 'legs_box_2':
          var section = '#update_legs';
          break;
      }
      $(section).html(data);
    });
  });
</script>
