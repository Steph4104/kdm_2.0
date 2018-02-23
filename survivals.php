<div class="col-sm-4 ">
    <label for="SurvivalPts"  class="col-sm-5">Survival Points: </label>
    <div class="col-sm-3 ">
        <input type="SurvivalPts" class="form-control test" id="SurvivalPts" placeholder=" # " value=<?php echo $survivol['SURVIVOL'];?> >
    </div>
</div>

<div class="col-sm-2">
    <div class="checkbox">
        <label>
            <input type="checkbox" class='test' id="SurvivalDodge" <?php echo ($action['DODGE'] =='1') ? 'value ="0" checked' : 'value="1"';  ?>> Dodge
        </label>
    </div>
    <div class="checkbox">
        <label>
            <input type="checkbox" class='test' id="SurvivalDash" <?php echo ($action['DASH'] =='1') ? 'value ="0" checked' : 'value="1"';  ?>> Dash
        </label>
    </div>
</div>
<div class="col-sm-2">
    <div class="checkbox">
        <label>
            <input type="checkbox" class='test' id="SurvivalEncourage" <?php echo ($action['ENCOURAGE'] =='1') ? 'value ="0" checked' : 'value="1"';  ?>> Encourage
        </label>
    </div>
    <div class="checkbox">
        <label>
            <input type="checkbox" class='test' id="SurvivalSurge" <?php echo ($action['SURGE'] =='1') ? 'value ="0" checked' : 'value="1"';  ?>> Surge
        </label>
    </div>
</div>
<div class="col-sm-4">
    <div class="checkbox">
        <label>
            <input type="checkbox" class='test' id="NoSurvival" <?php echo ($survivol['SPEND'] =='0') ? 'value ="1" checked' : 'value="1"';  ?>> Cannot spend survivals.
        </label>
    </div>
</div>        