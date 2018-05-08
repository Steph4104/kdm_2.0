      		<div class="panel-body">
          <div class="form-group " style='margin:0px;padding-left: 15px'>
      <label for="insanity">Insanity</label>
<div id='update_insanity'>
      <input type="text" style='width:5%;' class="form-control update_armor" id="insanity" value=<?php echo($insanity['INSANITY'] >= 0 ?  $insanity['INSANITY'] : 0);?> >
    <input class=".form-check-inline update_armor" type="checkbox" value='-1' id="box_insanity_1"  <?php echo($insanity['INSANITY'] < 0 ? 'checked' : '');?> >
<p>Brain. If your insanity is 3+, you are <strong>insane</strong></p>
    </div>
  </div>
            	<div class="col-sm-1">
                 <div class="form-group col-md-2 stats">
      <label for="movement">Movement</label>

      <input type="text" class="form-control test"  id="movement" value=<?php echo $primary_stat['MOVEMENT'];?>>
    </div>

              </div>
              <div class="col-sm-5">

    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="accuracy">Accuracy</label>
      <input type="text" class="form-control test" id="accuracy" value=<?php echo $primary_stat['ACCURACY'];?> >
    </div>
    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="strengh">Strengh</label>
      <input type="text" class="form-control test" id="strength" value=<?php echo $primary_stat['STRENGTH'];?> >
    </div>
    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="evasion">Evasion</label>
      <input type="text" class="form-control test" id="evasion" value=<?php echo $primary_stat['EVASION'];?> >
    </div>
    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="luck">Luck</label>
      <input type="text" class="form-control test" id="luck" value=<?php echo $primary_stat['LUCK'];?> >
    </div>
    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="speed">Speed</label>
      <input type="text" class="form-control test" id="speed" value=<?php echo $primary_stat['SPEED'];?> >
    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="head">Head</label>
<div id='update_head'>
      <input type="text" class="form-control update_armor" id="head" value=<?php echo($armor_stat['HEAD'] >= 0 ?  $armor_stat['HEAD'] : 0);?> >
    <input class=".form-check-inline update_armor" type="checkbox" value='-1' id="box_head_1"  <?php echo($armor_stat['HEAD'] < 0 ? 'checked' : '');?> >

    </div>
  </div>
    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="arm">Arms</label>
      <div id='update_arms'>
      <input type="text" class="form-control update_armor" id="arm" value=<?php echo($armor_stat['ARMS'] >= 0 ?  $armor_stat['ARMS'] : 0);?>>
      <input class="form-check-input update_armor" type="checkbox" value='-1' id="arm_box_1" class="arm_box_1" <?php echo($armor_stat['ARMS'] < 0 ? 'checked' : '');?>>
      <input class="form-check-input update_armor" type="checkbox" value='-2' id="arm_box_2" class="arm_box_2" <?php echo($armor_stat['ARMS'] < -1 ? 'checked' : '');?>>
    </div>
    </div>

    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="body">Body</label>
      <div id='update_body'>
      <input type="text" class="form-control update_armor" id="body" value=<?php echo($armor_stat['BODY'] >= 0 ?  $armor_stat['BODY'] : 0);?>>
       <input class="form-check-input update_armor" type="checkbox" value='-1' id="body_box_1" <?php echo($armor_stat['BODY'] < 0 ? 'checked' : '');?>>
        <input class="form-check-input update_armor" type="checkbox" value='-2' id="body_box_2" <?php echo($armor_stat['BODY'] < -1 ? 'checked' : '');?>>
    </div>
</div>

    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="waist">Waist</label>
      <div id='update_waist'>
      <input type="text" class="form-control update_armor" id="waist" value=<?php echo($armor_stat['WAIST'] >= 0 ?  $armor_stat['WAIST'] : 0);?>>
      <input class="form-check-input update_armor" type="checkbox" value='-1' id="waist_box_1" <?php echo($armor_stat['WAIST'] < 0 ? 'checked' : '');?>>
      <input class="form-check-input update_armor" type="checkbox" value='-2' id="waist_box_1" <?php echo($armor_stat['WAIST'] < -1 ? 'checked' : '');?>>
    </div>
    </div>

    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="legs">Legs</label>
      <div id='update_legs'>
      <input type="text" class="form-control update_armor" id="legs" value=<?php echo($armor_stat['LEGS'] >= 0 ?  $armor_stat['LEGS'] : 0);?>>
      <input class="form-check-input update_armor" value='-1' type="checkbox" id="legs_box_1" <?php echo($armor_stat['LEGS'] < 0 ? 'checked' : '');?>>
      <input class="form-check-input update_armor" value='-2' type="checkbox" id="legs_box_1" <?php echo($armor_stat['LEGS'] < -1 ? 'checked' : '');?>>
    </div>
  </div>

                </div>
      		</div>
          <script>
$(document).ready(function() {
 $('.update_armor').off().on('change', function() {
   alert('on change');
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

    alert('uncheckd ' + itemVal);

    }


      break;

    case 'arm_box_1':

    var ischecked= $(this).is(':checked');

    if(!ischecked){
          itemVal = 0;

    alert('uncheckd ' + itemVal);

    }
    break;
    case 'arm_box_2':

     var ischecked= $(this).is(':checked');

    if(!ischecked){
          itemVal = -1;

    alert('uncheckd2 ' + itemVal);

    }
      break;
    case 'body_box_1':

    var ischecked= $(this).is(':checked');

    if(!ischecked){
          itemVal = 0;

    alert('uncheckd ' + itemVal);

    }
    break;
    case 'body_box_2':

     var ischecked= $(this).is(':checked');

    if(!ischecked){
          itemVal = -1;

    alert('uncheckd2 ' + itemVal);

    }
      break;
          case 'waist_box_1':

    var ischecked= $(this).is(':checked');

    if(!ischecked){
          itemVal = 0;

    alert('uncheckd ' + itemVal);

    }
    break;
    case 'waist_box_2':

     var ischecked= $(this).is(':checked');

    if(!ischecked){
          itemVal = -1;

    alert('uncheckd2 ' + itemVal);

    }
      break;
      case 'legs_box_1':

    var ischecked= $(this).is(':checked');

    if(!ischecked){
          itemVal = 0;

    alert('uncheckd ' + itemVal);

    }
    break;
    case 'legs_box_2':

     var ischecked= $(this).is(':checked');

    if(!ischecked){
          itemVal = -1;

    alert('uncheckd2 ' + itemVal);

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

 });

          </script>
