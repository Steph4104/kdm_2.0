		<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      		<div class="panel-body">
            <div class="row">
            
				<div class="col-sm-6">
                    <label class="checkbox">Hunt XP:  </label>
                    <?php
                    for ($i = 1; $i <= $hunt_xp['XP']; $i++) {
    
                        echo ' <input type="checkbox"  value="Option1" id="HuntXP'.$i.'" aria-label="..." checked> ';
}

$uncheck_huntXP = 15 - $hunt_xp['XP'];
                    for ($s = 1; $s <= $uncheck_huntXP; $s++) {
    
                        echo ' <input type="checkbox"  value="Option'.$s.'" id="HuntXP'.$i.'" aria-label="..." > ';
}
                    ?>
                 	 
                        <?php $weapon = array("1" => "Dagger","2" => "Sword", "3" => "Club", "4" => "Bow","5" =>"Catar") ?>
                            
                            <br/>
                            <label >Weapon proficiency type: </label>
                                <select class="form-control">
                                    <?php foreach($weapon as $key => $name){
                                        if ($w_proficiency['TYPE'] == $key){
                                            echo '<option value="'.$key.' "selected>'.$name.'</option>'; //close your tags!!
                                        }else{
                                            echo '<option value="'.$key.'">'.$name.'</option>'; //close your tags!!
                                            
                                        }
                                        
                                    } ?>
                                   
                                </select>
                                         
                    		<label class="checkbox">Weapon proficiency:  </label>
                            <?php
                            for ($i = 1; $i <= $w_proficiency['PROFICIENCY']; $i++) {
            
                                echo ' <input type="checkbox"  value="Option1" id="proficiency'.$i.'" aria-label="..." checked> ';
        }
        
        $uncheck_proficiency = 15 - $w_proficiency['PROFICIENCY'];
                            for ($s = 1; $s <= $uncheck_proficiency; $s++) {
            
                                echo ' <input type="checkbox"  value="Option'.$s.'" id="proficiency'.$i.'" aria-label="..." > ';
        }
                            ?>
                </div>
               
                 <div class="col-sm-6">
                 	<div class="row">
                    	<div class="col-sm-12">
                            <label class="checkbox">Courage  </label>
                            
                            <?php
                    for ($i = 1; $i <= $courage['COURAGE']; $i++) {
    
                        echo ' <input type="checkbox"  value="Option1" id="Courage'.$i.'" aria-label="..." checked> ';
}

$uncheck_courage = 10 - $courage['COURAGE'];
                    for ($s = 1; $s <= $uncheck_courage; $s++) {
    
                        echo ' <input type="checkbox"  value="Option'.$s.'" id="Courage'.$i.'" aria-label="..." > ';
}
                    ?>

                		</div>
                        <div class="col-sm-3">                    
                            <div class="radio">
                                  <label>
                                        <input type="radio" name="courage_1" id="courage_1" value="1" <?php echo ($courage['OPTION_COURAGE'] == 1 ? 'checked': ""); ?>>
                                    Stalwart
                                  </label>
                            </div>    
                            <div class="radio">
                                  <label>
                                        <input type="radio" name="courage_2" id="courage_2" value="2" <?php echo ($courage['OPTION_COURAGE'] == 2 ? 'checked' : ""); ?>>
                                    Prepared
                                  </label>
                            </div>     
                             <div class="radio">
                                  <label>
                                        <input type="radio" name="courage_3" id="courage_3" value="3" <?php echo ($courage['OPTION_COURAGE'] == 3 ? 'checked' : ""); ?>>
                                    Matchmaker
                                  </label>
                            </div>
                 		</div>                   
                         <div class="col-sm-8">
                         <textarea class="form-control" rows="3"><?php echo $courage['OTHER']?></textarea>
                         </div>
                         <hr/>
                         <div class="col-sm-12">
                            <label class="checkbox">Understanding  </label>
                             
                                  <?php
                    for ($i = 1; $i <= $understanding['Understanding']; $i++) {
    
                        echo ' <input type="checkbox"  value="Option'.$i.'" id="Understanding'.$i.'" aria-label="..." checked> ';
}

$uncheck_understanding = 10 - $understanding['Understanding'];
                    for ($s = 1; $s <= $uncheck_understanding; $s++) {
    
                        echo ' <input type="checkbox"  value="Option'.$s.'" id="Understanding'.$i.'" aria-label="..." > ';
}
                    ?>

                         </div> 
                          <div class="col-sm-3">                    
                            <div class="radio">
                                  <label>
                                        <input type="radio" name="understanding_1" id="understanding_1" value="1" <?php echo ($understanding['OPTION_UNDERSTANDING'] == 1 ? 'checked': ""); ?>>
                                    Analyse
                                  </label>
                            </div>    
                            <div class="radio">
                                  <label>
                                        <input type="radio" name="understanding_2" id="understanding_2" value="2" <?php echo ($understanding['OPTION_UNDERSTANDING'] == 2 ? 'checked': ""); ?>>
                                    Explore
                                  </label>
                            </div>     
                             <div class="radio">
                                  <label>
                                        <input type="radio" name="understanding_3" id="understanding_3" value="3" <?php echo ($understanding['OPTION_UNDERSTANDING'] == 3 ? 'checked': ""); ?>>
                                    Tinker
                                  </label>
                            </div>
                 		</div>         
                          <div class="col-sm-8">
                         <textarea class="form-control" rows="3"><?php echo $understanding['OTHER']?></textarea>
                         </div>  
                        </div> 
                  </div>
     		</div>
            </div>
    	</div>