      		<div class="panel-body">
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
      <input type="text" class="form-control" id="waist" value=<?php echo($armor_stat['WAIST'] >= 0 ?  $armor_stat['WAIST'] : 0);?>>
      <input class="form-check-input" type="checkbox" class="waist_box_1" <?php echo($armor_stat['WAIST'] < 0 ? 'checked' : '');?>>
      <input class="form-check-input" type="checkbox" class="waist_box_1" <?php echo($armor_stat['WAIST'] < -1 ? 'checked' : '');?>>
    </div>

    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="legs">Legs</label>
      <input type="text" class="form-control" id="legs" value=<?php echo($armor_stat['LEGS'] >= 0 ?  $armor_stat['LEGS'] : 0);?>>
      <input class="form-check-input" type="checkbox" class="legs_box_1" <?php echo($armor_stat['LEGS'] < 0 ? 'checked' : '');?>>
      <input class="form-check-input" type="checkbox" class="legs_box_1" <?php echo($armor_stat['LEGS'] < -1 ? 'checked' : '');?>>
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

if ($(this).is('input:checkbox')){

  switch (itemID) {
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
  }

}

$.ajax({
  url: "update_armor.php",
  type: 'POST',
  data: { value: itemVal, id : character, type: itemID} ,
}).success(function(data){


 switch (itemID) {
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
  }
  $(section).html(data);
});
});


//  $(document).ready(function() {
//   //$('#textbox1').val($(this).is(':checked'));
//   var itemVal = $('#head').val();
//   $('#box_head_1').change(function() {
//       if($(this).is(":checked")) {
//        console.log('text '+ itemVal);
//        if(itemVal > 0){
//       $('#head').val('0');
         
//        }
//       }else{
//        console.log('text2');
//       }
//      // $('#textbox1').val($(this).is(':checked'));        
//   });
//   $( "input" ).on('change', function() {
//     var itemID = $(this).attr('id');
//     var itemVal = $(this).val();

//     if( $(this).is('input:text') ){
//       console.log('text');
//       switch(itemID) {
//     case '#arm':
//       if(itemVal >= 0){
//         $('#arm_box_1').prop('checked', false);
//         $('#arm_box_2').prop('checked', false);
        
//       }else if(itemVal = -1){
//         $('#arm_box_1').prop('checked', true);
//         $('#arm_box_2').prop('checked', false); 
//       }else{
//         $('#arm_box_1').prop('checked', true);
//         $('#arm_box_2').prop('checked', true); 
//       }
//         break;
//     case 'head':
//     // console.log('box_head');
//     // if(itemVal >= 0){
//     //   $('#box_head_1').prop('checked', false)
//     // }else if (itemVal< 0){
//     //   $('#box_head_1').prop('checked', true)
//     // }
//         break;
//     default:
//   break;
// }
//     }else if( $(this).is('input:checkbox') ){
//       console.log('checkbox');
//       console.log(itemID);
//       switch(itemID) {
//         case 'box_head_1':
//            if($('#box_head_1').prop('checked', true)){
//           // console.log('head');
//              $('#head').val('0');
//           //   $('#box_head_1').prop('checked', false);
//              }else{
//              $('#box_head_1').prop('checked', false);
               
//                }//else if ($('#box_head_1').prop('checked', false)){
//           //   $('#head').val('0');
//           //   $('#box_head_1').prop('checked', true);
//           //   }
//         break;
//     default:
//   break;
// }
    
//     }


    
   
//   });
 });
  
          </script>