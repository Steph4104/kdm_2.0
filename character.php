<div class="col-sm-1">
    <div class="radio">
        <label>
            <input type="radio" class='test' name="CharacterInfoSex" value="H" id="CharacterInfoSex1" <?php if($sexe['SEXE'] =='H'){echo'checked';}  ?>> Male
        </label>
    </div>
    <div class="radio">
        <label>
            <input type="radio" class='test' name="CharacterInfoSex" value="F" id="CharacterInfoSex2" <?php if($sexe['SEXE'] =='F'){echo'checked';}  ?>> Female
        </label>
    </div>
</div>
<div class="col-sm-9" style="padding-top:12px;">
    <label for="CharcterInfoName"  class="col-sm-1">Name: </label>
    <div class="col-sm-5">
        <input type="name" class="form-control test" name="name" id="CharcterInfoName" value= <?php echo $name["NAME_SURVIVORS"] ?>>
    </div>
    <label for="CharcterInfoBirth"  class="col-sm-2 ">Year of birth: </label>
    <div class="col-sm-2">
        <input type="YoB" class="form-control test" id="CharcterInfoBirth" placeholder="Year of Birth" value=<?php echo $born['YEARS']; ?>>
    </div>
</div>
<div class="col-sm-2">
    <div class="checkbox">
        <label>
            <input type="checkbox" class='test' value="Dead" id="CharacterInfoDead" <?php if($dead['DEAD'] =='1'){echo'checked';}  ?>> Dead
        </label>
    </div>
</div>