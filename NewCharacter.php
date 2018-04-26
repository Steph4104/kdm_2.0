<?php
  ob_start();
  session_start();
  require_once 'head.php';
  require_once 'database.php';
  $con=mysqli_connect($db_host, $db_username, $db_password,$db_name);
  // Check connection
  if (mysqli_connect_errno()){
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

  $fighting_art_num1 = '';
  $fighting_art_num2 = '';
  $fighting_art_num3 = '';
  $disorder_num1 = '';
  $disorder_num2 = '';
  $disorder_num3 = '';

?>
<!doctype html>
<html lang="en">
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
        <a class="navbar-brand" href="index.php">Kingdom Death: Monster</a>
      </div>
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="#">KD:M</a></li>
          <li><a href="#about">Settlement Sheet</a></li>

          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Character sheet<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#">John Snow</a></li>
              <li><a href="#">Rob Stark</a></li>
              <li><a href="#">Missandei</a></li>
              <li role="separator" class="divider"></li>
              <li class="dropdown-header">Dead Characters</li>
              <li><a href="#">Aria Stark</a></li>
              <li><a href="#">Jeoffrey</a></li>
            </ul>
          </li>
          <li><a href="#contact">Ressources</a></li>
        </ul>
      </div><!--/.nav-collapse -->
    </div>
  </nav>
  <body>
    <form action='create_character.php' method='POST'>
    <div class="container">
      <h1>Kingdom Death: Monster</h1>
      <h2>Create Character</h2>
      <div class='row'>
        <div class="col-sm-6" style="padding-top:12px;">
          <label for="CharcterInfoName"  class="col-sm-1">Name: </label>
          <div class="col-sm-5">
            <input type="name" class="form-control test" name="name" id="CharcterInfoName">
          </div>
        </div>
        <div class="col-sm-2">
          <div class="radio">
            <label>
              <input type="radio" class='test' name="CharacterInfoSex" value="H" id="CharacterInfoSex1"> Male
            </label>
          </div>
          <div class="radio">
            <label>
              <input type="radio" class='test' name="CharacterInfoSex" value="F" id="CharacterInfoSex2"> Female
            </label>
          </div>
        </div>
        <div class="col-sm-4 ">
            <label for="SurvivalPts"  class="col-sm-5">Survival Points: </label>
            <div class="col-sm-3 ">
              <input type="number" class="form-control test" name="SurvivalPts" placeholder=" # ">
            </div>
        </div>
      </div>
      <div class='row'>
        <div class="panel-body">
          <div class="col-sm-1">
            <div class="form-group col-md-2 stats">
              <label for="movement">Movement</label>
              <input type="text" class="form-control test"  name="movement">
            </div>
          </div>
          <div class="col-sm-5">
            <div class="form-group col-md-2" style='margin:0px;'>
              <label for="accuracy">Accuracy</label>
              <input type="text" class="form-control test" name="accuracy">
            </div>
            <div class="form-group col-md-2" style='margin:0px;'>
              <label for="strengh">Strengh</label>
              <input type="text" class="form-control test" name="strength">
            </div>
            <div class="form-group col-md-2" style='margin:0px;'>
              <label for="evasion">Evasion</label>
              <input type="text" class="form-control test" name="evasion">
            </div>
            <div class="form-group col-md-2" style='margin:0px;'>
              <label for="luck">Luck</label>
              <input type="text" class="form-control test" name="luck">
            </div>
            <div class="form-group col-md-2" style='margin:0px;'>
              <label for="speed">Speed</label>
              <input type="text" class="form-control test" name="speed">
            </div>
          </div>
        </div>
      </div>
      <div class='row'>
        <div class="form-group col-sm-4">
          <br/>
          <label >Fighting art: </label>
          <select class="form-control update_fighting" name='fighting_art_1' id='fighting_art_1'>
            <?php
              $fighting_art = mysqli_query($con, "SELECT * FROM fighting_art ORDER BY ID ASC");

              while ($row = $fighting_art->fetch_assoc()) {
                if($row['ID'] == $fighting_art_num1){
                  echo '<option value="'.$row["ID"].'" selected>'.$row["Nom"].'</option>';
                  $fighting_description1 = $row["Rules"];
                }else{
                  echo '<option value="'.$row["ID"].'">'.$row["Nom"].'</option>';
                }
              }
            ?>
          </select>
          <label for="fighting_art_1">#1</label>
          <div id="update_fighting_art_1">
            <textarea class="form-control" id="textarea_fighting_art_1" rows="3"><?php echo (isset($fighting_description1) ? $fighting_description1 : ''); ?></textarea>
          </div>
        </div>

        <div class="form-group col-sm-4">
          <br/>
          <label >Fighting art: </label>
          <select class="form-control update_fighting " name='fighting_art_2'>
            <?php
              $fighting_art = mysqli_query($con, "SELECT * FROM fighting_art ORDER BY ID ASC");

              while ($row = $fighting_art->fetch_assoc()) {
                if($row['ID'] == $fighting_art_num2){
                  echo '<option value="'.$row["ID"].'" selected>'.$row["Nom"].'</option>';
                  $fighting_description2 = $row["Rules"];
                }else{
                  echo '<option value="'.$row["ID"].'">'.$row["Nom"].'</option>';
                }
              }
            ?>
          </select>
          <label for="fighting_art_1">#2</label>
          <div id="update_fighting_art_2">
            <textarea class="form-control" id="textarea_fighting_art_2" rows="3"><?php echo (isset($fighting_description2) ? $fighting_description2 : ''); ?></textarea>
          </div>
        </div>

        <div class="form-group col-sm-4">
          <br/>
          <label >Fighting art: </label>
          <select class="form-control update_fighting" name='fighting_art_3'>
            <?php
              $fighting_art = mysqli_query($con, "SELECT * FROM fighting_art ORDER BY ID ASC");
              while ($row = $fighting_art->fetch_assoc()) {
                if($row['ID'] == $fighting_art_num3){
                  echo '<option value="'.$row["ID"].'" selected>'.$row["Nom"].'</option>';
                  $fighting_description3 = $row["Rules"];
                }else{
                  echo '<option value="'.$row["ID"].'">'.$row["Nom"].'</option>';
                }
              }
            ?>
          </select>
          <label for="fighting_art_1">#3</label>
          <div id="update_fighting_art_3">
            <textarea class="form-control" id="textarea_fighting_art_3" rows="3"><?php echo (isset($fighting_description3) ? $fighting_description3 : ''); ?></textarea>
          </div>
        </div>
      </div>
      <div class='row'>
        <div class="form-group col-sm-4">
          <br/>
          <label >Disorder: </label>
          <select class="form-control update_fighting" name='disorder_1'>
            <?php
              $disorder_desc = mysqli_query($con, "SELECT * FROM disorder ORDER BY ID ASC");
              while ($row = $disorder_desc->fetch_assoc()) {
                if($row['ID'] == $disorder_num1){
                  echo '<option value="'.$row["ID"].'" selected>'.$row["Nom"].'</option>';
                  $disorder_description1 = $row["Rules"];
                }else{
                  echo '<option value="'.$row["ID"].'">'.$row["Nom"].'</option>';
                }
              }
            ?>
          </select>
          <label for="disorder_1">#1</label>
          <div id="update_disorder_1">
            <textarea class="form-control" id="disorder_1" rows="3"><?php echo (isset($disorder_description1) ? $disorder_description1 : ''); ?></textarea>
          </div>
        </div>
        <div class="form-group col-sm-4">
          <br/>
          <label >Disorder: </label>
          <select class="form-control update_fighting" name='disorder_2'>
            <?php
              $disorder_desc = mysqli_query($con, "SELECT * FROM disorder ORDER BY ID ASC");
              while ($row = $disorder_desc->fetch_assoc()) {
                if($row['ID'] == $disorder_num2){
                  echo '<option value="'.$row["ID"].'" selected>'.$row["Nom"].'</option>';
                  $disorder_description2 = $row["Rules"];
                }else{
                  echo '<option value="'.$row["ID"].'">'.$row["Nom"].'</option>';
                }
              }
            ?>
          </select>
          <label for="disorder_1">#2</label>
          <div id="update_disorder_2">
            <textarea class="form-control" id="disorder_2" rows="3"><?php echo (isset($disorder_description2) ? $disorder_description2 : ''); ?></textarea>
          </div>
        </div>
        <div class="form-group col-sm-4">
          <br/>
          <label> Disorder: </label>
          <select class="form-control update_fighting" name='disorder_3'>
            <?php
              $disorder_desc = mysqli_query($con, "SELECT * FROM disorder ORDER BY ID ASC");
              while ($row = $disorder_desc->fetch_assoc()) {
                if($row['ID'] == $disorder_num3){
                  echo '<option value="'.$row["ID"].'" selected>'.$row["Nom"].'</option>';
                  $disorder_description3 = $row["Rules"];
                }else{
                  echo '<option value="'.$row["ID"].'">'.$row["Nom"].'</option>';
                }
              }
            ?>
          </select>
          <label for="disorder_3">#3</label>
          <div id="update_disorder_3">
            <textarea class="form-control" id="disorder_3" rows="3"><?php echo (isset($disorder_description3) ? $disorder_description3 : ''); ?></textarea>
          </div>
        </div>
      </div>
      <div class='row'>
        <div class="panel-body">
          <div class="col-md-offset-1 col-sm-10">
            <label for="other">Other</label>
            <textarea class="form-control test" name="other" rows="3"></textarea>
          </div>
        </div>
      </div>
    </div>
    <button type='submit'>Start</button>
  </form>
  </body>
</html>
<script>
  $(document).ready(function() {
		$('.update_fighting').bind('change', function() {
			var itemVal = $(this).val();
			var itemID = $(this).attr('id');
console.log(itemVal);
		  $.ajax({
			 	url: "update_fight.php",
			 	type: 'POST',
			 	data: { value: itemVal, type: itemID} ,
		  }).success(function(data){
         var section = '#update_' + itemID;
         console.log(section);
			 	$(section).html(data);
		  });
		});
	});
</script>