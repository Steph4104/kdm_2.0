<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="css/favicon.ico">

    <title>Theme Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/theme.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
<?php
require_once 'database.php';
$con=mysqli_connect($db_host, $db_username, $db_password,$db_name);
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
$survivor_id = 1;

$name = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM survivors WHERE ID_SURVIVOR = $survivor_id"));

$sexe = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM sexe WHERE ID_SURVIVOR = $survivor_id"));

$born = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM born WHERE ID_SURVIVOR = $survivor_id"));

$survivol = mysqli_fetch_assoc(mysqli_query($con, "SELECT SURVIVOL FROM survivol WHERE ID_SURVIVOR = $survivor_id"));

$dead = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM dead WHERE ID_SURVIVOR = $survivor_id"));

$hunt_xp = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM hunt_xp WHERE ID_SURVIVOR = $survivor_id"));

$courage = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM courage WHERE ID_SURVIVOR = $survivor_id"));

$understanding = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM understanding WHERE ID_SURVIVOR = $survivor_id"));
?>
    <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Kingdom Death: Monster</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">KD:M - Name</a></li>
            <li><a href="#about">Settlement Sheet</a></li>
            
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Character sheet<span class="caret"></span></a>
              <ul class="dropdown-menu">
                  <?php
     $sql='SELECT * from survivors inner join dead on survivors.ID_SURVIVOR = dead.ID_SURVIVOR';

if ($result=mysqli_query($con,$sql)){
    
  while ($row=mysqli_fetch_row($result)) {
        if($row[5] == 0){
            echo '<li><a href="'.$row[1].'">'.$row[1].'</a></li>';
        }
  }    
  mysqli_free_result($result);
}

                echo'<li role="separator" class="divider"></li>
                <li class="dropdown-header">Dead Characters</li> ' ; 

if ($result=mysqli_query($con,$sql)){
    
  while ($row=mysqli_fetch_row($result)) {
        if($row[5] == 1){
            echo '<li><a href="'.$row[1].'">'.$row[1].'</a></li>';
        }
  }
     
  mysqli_free_result($result);
}
?>
              </ul>
            </li>
            <li><a href="#contact">Ressources</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
      
<form class="form-horizontal">
    <div class="container theme-showcase" role="main">
<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
	<div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingOne">
          <h4 class="panel-title">
            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
              Character Name
            </a>
          </h4>
        </div>
       
        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">
                <div class="col-sm-1">
                    <div class="radio">
                        <label>
                            <input type="radio" name="inlineRadioOptions" value="Male" id="CharacterInfoSex1" <?php if($sexe['SEXE'] =='H'){echo'checked';}  ?>> Male
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input type="radio" name="inlineRadioOptions" value="Female" id="CharacterInfoSex2" <?php if($sexe['SEXE'] =='F'){echo'checked';}  ?>> Female
                        </label>
                    </div>
                </div>
                <div class="col-sm-9" style="padding-top:12px;">
                    <label for="CharcterInfoName"  class="col-sm-1">Name: </label>
                        <div class="col-sm-5">
                           <input type="name" class="form-control" name="name" id="CharcterInfoName" value= <?php echo $name["NAME_SURVIVORS"] ?>>
                        </div>
                    <label for="CharcterInfoBirth"  class="col-sm-2 ">Year of birth: </label>
                        <div class="col-sm-2">
                            <input type="YoB" class="form-control" id="CharcterInfoBirth" placeholder="Year of Birth" value=<?php echo $born['YEARS']; ?>>
                        </div>
                </div>
                <div class="col-sm-2">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"  value="Dead" id="CharacterInfoStatus1" <?php if ($dead['DEAD'] == 1){ echo 'checked';} ?>> Dead
                        </label>
                    </div>
                </div>
            </div>
        </div>
    </div>
  	<div class="panel panel-default">
    	<div class="panel-heading" role="tab" id="headingTwo">
      		<h4 class="panel-title">
        		<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Survivals
        		</a>
      		</h4>
    	</div>
		<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      		<div class="panel-body">
        		 <div class="col-sm-4 ">
                 	<label for="SurvivalPts"  class="col-sm-5">Survival Points: </label>
                        <div class="col-sm-3 ">
                            <input type="SurvivalPts" class="form-control" id="SurvivalPts" placeholder=" # " value=<?php echo $survivol['SURVIVOL'];?> >
                        </div>
                 </div>
                  <div class="col-sm-2">
                 	<div class="checkbox">
                        <label>
                            <input type="checkbox"  value="Dodge" id="SurvivalDodge"> Dodge
                        </label>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"  value="Dash" id="SurvivalDash"> Dash
                        </label>
                    </div>
                 </div>
                 <div class="col-sm-2">
                 	<div class="checkbox">
                        <label>
                            <input type="checkbox"  value="Encourage" id="SurvivalEncourage"> Encourage
                        </label>
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"  value="Surge" id="SurvivalSurge"> Surge
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
      		</div>
    	</div>
	</div>
  	<div class="panel panel-default">
    	<div class="panel-heading" role="tab" id="headingThree">
      		<h4 class="panel-title">
        		<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Experience
        		</a>
      		</h4>
    	</div>
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
                 	 
                        
                            
                            <br/>
                            <label >Weapon proficiency type: </label>
                                <select class="form-control">
                                    <option>Dagger</option>
                                    <option>Sword</option>
                                    <option>Club</option>
                                    <option>Bow</option>
                                    <option>Catar</option>
                                </select>
                                         
                    		<label class="checkbox">Weapon proficiency:  </label>
                            <input type="checkbox"  value="WeaponP1" id="WeaponP1" aria-label="..."> 
                            <input type="checkbox"  value="WeaponP2" id="WeaponP2" aria-label="...">
                            <input type="checkbox"  value="WeaponP3" id="WeaponP3" aria-label="...">
                            <input type="checkbox"  value="WeaponP4" id="WeaponP4" aria-label="...">
                            <input type="checkbox"  value="WeaponP5" id="WeaponP5" aria-label="...">
                            <input type="checkbox"  value="WeaponP6" id="WeaponP6" aria-label="...">
                            <input type="checkbox"  value="WeaponP7" id="WeaponP7" aria-label="...">
                            <input type="checkbox"  value="WeaponP8" id="WeaponP8" aria-label="...">
                            <input type="checkbox"  value="WeaponP9" id="WeaponP9" aria-label="...">
                            <input type="checkbox"  value="WeaponP10" id="WeaponP10" aria-label="...">
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
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
                                    Stalwart
                                  </label>
                            </div>    
                            <div class="radio">
                                  <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
                                    Prepared
                                  </label>
                            </div>     
                             <div class="radio">
                                  <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
                                    Matchmaker
                                  </label>
                            </div>
                 		</div>                   
                         <div class="col-sm-8">
                         <textarea class="form-control" rows="3"></textarea>
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
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
                                    Analyse
                                  </label>
                            </div>    
                            <div class="radio">
                                  <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
                                    Explore
                                  </label>
                            </div>     
                             <div class="radio">
                                  <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" >
                                    Tinker
                                  </label>
                            </div>
                 		</div>         
                          <div class="col-sm-8">
                         <textarea class="form-control" rows="3"></textarea>
                         </div>  
                        </div> 
                  </div>
     		</div>
            </div>
    	</div>
	</div>

	<div class="panel panel-default">
    	<div class="panel-heading" role="tab" id="headingFour">
     		<h4 class="panel-title">
        		<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">Stats + Armor
        		</a>
      		</h4>
    	</div>
    	<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
      		<div class="panel-body">
            	<div class="col-sm-6">
                Stats
                </div>
                <div class="col-sm-6">
                Armor
                </div>
      		</div>
    	</div>
  	</div>
  	<div class="panel panel-default">
    	<div class="panel-heading" role="tab" id="headingFive">
      		<h4 class="panel-title">
        		<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">Fighting Arts + Secret Fighting Arts
        		</a>
      		</h4>
    	</div>
    	<div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
      		<div class="panel-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      		</div>
    	</div>
  	</div>
  	<div class="panel panel-default">
    	<div class="panel-heading" role="tab" id="headingSix">
      		<h4 class="panel-title">
        		<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">Disorders
        		</a>
      		</h4>
    	</div>
    	<div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
      		<div class="panel-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      		</div>
    	</div>
  	</div>
	<div class="panel panel-default">
    	<div class="panel-heading" role="tab" id="headingSeven">
      		<h4 class="panel-title">
        		<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">Abilities + Impairements
        		</a>
      		</h4>
    	</div>
    	<div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
      		<div class="panel-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      		</div>
    	</div>
	</div>
  	<div class="panel panel-default">
    	<div class="panel-heading" role="tab" id="headingEight">
      		<h4 class="panel-title">
        		<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="false" aria-controls="collapseEight">Other
        		</a>
      		</h4>
    	</div>
    	<div id="collapseEight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingEight">
      		<div class="panel-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
      		</div>
    	</div>
	</div>
</div>
   <button type="button" class="btn btn-success">Submit</button>
   <button type="button" class="btn btn-danger">Cancel</button>
    </div> <!-- /container -->
</form>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
