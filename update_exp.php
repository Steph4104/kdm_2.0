<?php
	require_once 'database.php';
	$con=mysqli_connect($db_host, $db_username, $db_password,$db_name);
	$survivor_id = $_POST['id'];
	if($_POST['type'] == 'HuntXP'){
		$hunt = explode(",", $_POST['value']);
	 	if($hunt['0'] == 'less'){
	    $new_value = $hunt['1'] - 1;
	  }else{
	    $new_value = $hunt['1'] + 1;
	  }
		$sql = "UPDATE hunt_xp SET XP ='".$new_value."' WHERE ID_SURVIVOR='".$_POST['id']."'";
		if ($con->query($sql) === TRUE) {
	    error_log('sucess');
		} else {
	    error_log( "Error updating record: " . $con->error);
		}
?>
<label class="checkbox">Hunt XP:  </label>
<?php
  	$survivor_id = $_POST['id'];
    $hunt_xp = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM hunt_xp WHERE ID_SURVIVOR = $survivor_id"));

    for ($i = 1; $i <= $hunt_xp['XP']; $i++) {
      echo ' <input type="checkbox" class="test2"  value="less,'.$hunt_xp['XP'].'" id="HuntXP" aria-label="..." checked> ';
		}
		$uncheck_huntXP = 15 - $hunt_xp['XP'];
    for ($s = 1; $s <= $uncheck_huntXP; $s++) {
      echo ' <input type="checkbox" class="test2"  value="more,'.$hunt_xp['XP'].'" id="HuntXP" aria-label="..." > ';
		}
	}elseif ($_POST['type'] == 'proficiency') {

		$proficiency = explode(",", $_POST['value']);
	  if($proficiency['0'] == 'less'){
	      $new_value = $proficiency['1'] - 1;
	  }else{
	      $new_value = $proficiency['1'] + 1;
	  }
		$sql = "UPDATE w_proficiency SET PROFICIENCY ='".$new_value."' WHERE ID_SURVIVOR='".$_POST['id']."'";

		if ($con->query($sql) === TRUE) {
		  error_log('sucess');
		} else {
		  error_log( "Error updating record: " . $con->error);
		}
?>
 		<label class="checkbox">Weapon proficiency:  </label>
<?php
	  $survivor_id = $_POST['id'];
		$w_proficiency = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM w_proficiency WHERE ID_SURVIVOR = $survivor_id"));
	  for ($i = 1; $i <= $w_proficiency['PROFICIENCY']; $i++) {
	    echo ' <input type="checkbox" class="test2"  value="less,'.$w_proficiency['PROFICIENCY'].'" id="proficiency" aria-label="..." checked> ';
	  }
	  $uncheck_proficiency = 15 - $w_proficiency['PROFICIENCY'];
	  for ($s = 1; $s <= $uncheck_proficiency; $s++) {
	    echo ' <input type="checkbox" class="test2"  value="more,'.$w_proficiency['PROFICIENCY'].'" id="proficiency" aria-label="..." > ';
	  }
	}elseif ($_POST['type'] == 'Courage') {
  	$courage = explode(",", $_POST['value']);
  	if($courage['0'] == 'less'){
      $new_value = $courage['1'] - 1;
    }else{
      $new_value = $courage['1'] + 1;
    }
		$sql = "UPDATE courage SET COURAGE ='".$new_value."' WHERE ID_SURVIVOR='".$_POST['id']."'";

		if ($con->query($sql) === TRUE) {
		    error_log('sucess');
		} else {
		    error_log( "Error updating record: " . $con->error);
		}
?>
  	<label class="checkbox">Courage  </label>

<?php
		$courage = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM courage WHERE ID_SURVIVOR = $survivor_id"));
    for ($i = 1; $i <= $courage['COURAGE']; $i++) {
    	echo ' <input type="checkbox" class="test2" value="less,'.$courage['COURAGE'].'" id="Courage" aria-label="..." checked> ';
		}

		$uncheck_courage = 10 - $courage['COURAGE'];
    for ($s = 1; $s <= $uncheck_courage; $s++) {
      echo ' <input type="checkbox" class="test2"  value="more,'.$courage['COURAGE'].'" id="Courage" aria-label="..." > ';
		}

	} elseif ($_POST['type'] == 'Understanding') {

 		$understanding = explode(",", $_POST['value']);
    if($understanding['0'] == 'less'){
      $new_value = $understanding['1'] - 1;
    }else{
      $new_value = $understanding['1'] + 1;
    }
		$sql = "UPDATE understanding SET Understanding ='".$new_value."' WHERE ID_SURVIVOR='".$_POST['id']."'";

		if ($con->query($sql) === TRUE) {
		    error_log('sucess');
		} else {
		    error_log( "Error updating record: " . $con->error);
		}

 ?>
 		<label class="checkbox">Understanding  </label>
<?php
 		$understanding = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM understanding WHERE ID_SURVIVOR = $survivor_id"));
    for ($i = 1; $i <= $understanding['Understanding']; $i++) {
      echo ' <input type="checkbox" class="test2" value="less,'.$understanding['Understanding'].'" id="Understanding" aria-label="..." checked> ';
		}
		$uncheck_understanding = 10 - $understanding['Understanding'];
    for ($s = 1; $s <= $uncheck_understanding; $s++) {
      echo ' <input type="checkbox"  class="test2" value="more,'.$understanding['Understanding'].'" id="Understanding" aria-label="..." > ';
		}
	}
?>

<script>
$('.test2').off().on('click', function() {
	var itemVal = $(this).val();
	var character = <?php echo $survivor_id; ?>;
	var itemID = $(this).attr('id');

	$.ajax({
	  url: "update_exp.php",
	  type: 'POST',
	  data: { value: itemVal, id : character, type: itemID} ,
	}).success(function(data){
	  var section = '#update_' + itemID;
	  $(section).html(data);
	});
});
</script>
