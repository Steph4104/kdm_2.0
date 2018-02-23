<div class="col-sm-4 ">
    <label for="SurvivalPts"  class="col-sm-5">Survival Points: </label>
    <div class="col-sm-3 ">
        <input type="SurvivalPts" class="form-control test" id="SurvivalPts" placeholder=" # " value=<?php echo $survivol['SURVIVOL'];?> >
    </div>
</div>
<div class="col-sm-2">
    <div class="checkbox">
        <label>
            <input type="checkbox" class='test'  value="Dodge" id="SurvivalDodge" <?php if($action['DODGE'] =='1'){echo'checked';}  ?>> Dodge
        </label>
    </div>
    <div class="checkbox">
        <label>
            <input type="checkbox"  value="Dash" id="SurvivalDash" <?php if($action['DASH'] =='1'){echo'checked';}  ?>> Dash
        </label>
    </div>
</div>
<div class="col-sm-2">
    <div class="checkbox">
        <label>
            <input type="checkbox"  value="Encourage" id="SurvivalEncourage" <?php if($action['ENCOURAGE'] =='1'){echo'checked';}  ?>> Encourage
        </label>
    </div>
    <div class="checkbox">
        <label>
            <input type="checkbox"  value="Surge" id="SurvivalSurge" <?php if($action['SURGE'] =='1'){echo'checked';}  ?>> Surge
        </label>
    </div>
</div>
<div class="col-sm-4">
    <div class="checkbox">
        <label>
            <input type="checkbox"  value="NoSurvival" id="NoSurvival"> Cannot spend survivals.
        </label>
    </div>
</div>        