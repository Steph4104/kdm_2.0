      		<div class="panel-body">
            	<div class="col-sm-1">
                 <div class="form-group col-md-2 stats">
      <label for="movement">Movement</label>

      <input type="text" class="form-control"  id="movement" value=<?php echo $primary_stat['MOVEMENT'];?>>
    </div>
                
              </div>
              <div class="col-sm-5">
               
    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="accuracy">Accuracy</label>
      <input type="text" class="form-control" id="accuracy" value=<?php echo $primary_stat['ACCURACY'];?> >
    </div>
    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="strengh">Strengh</label>
      <input type="text" class="form-control" id="strengh" value=<?php echo $primary_stat['STRENGHT'];?> >
    </div>
    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="evasion">Evasion</label>
      <input type="text" class="form-control" id="evasion" value=<?php echo $primary_stat['EVASION'];?> >
    </div>
    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="luck">Luck</label>
      <input type="text" class="form-control" id="luck" value=<?php echo $primary_stat['LUCK'];?> >
    </div>
    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="speed">Speed</label>
      <input type="text" class="form-control" id="speed" value=<?php echo $primary_stat['SPEED'];?> >
    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="head">Head</label>

      <input type="text" class="form-control" id="head" value=<?php echo($armor_stat['HEAD'] >= 0 ?  $armor_stat['HEAD'] : 0);?> >
      <input class=".form-check-inline" type="checkbox" id="box_head_1"  <?php echo($armor_stat['HEAD'] < 0 ? 'checked' : '');?> >
    </div>
        
    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="arm">Arms</label>
      <input type="text" class="form-control" id="arm">
      <input class="form-check-input" type="checkbox" class="arm_box_1">
      <input class="form-check-input" type="checkbox" class="arm_box_2">
    </div>

    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="body">Body</label>
      <input type="text" class="form-control" id="body">
       <input class="form-check-input" type="checkbox" class="body_box_1">
        <input class="form-check-input" type="checkbox" class="body_box_1">
    </div>

    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="waist">Waist</label>
      <input type="text" class="form-control" id="waist">
      <input class="form-check-input" type="checkbox" class="waist_box_1">
      <input class="form-check-input" type="checkbox" class="waist_box_1">
    </div>

    <div class="form-group col-md-2" style='margin:0px;'>
      <label for="legs">Legs</label>
      <input type="text" class="form-control" id="legs">
      <input class="form-check-input" type="checkbox" class="legs_box_1">
      <input class="form-check-input" type="checkbox" class="legs_box_1">
    </div>

                </div>
      		</div>