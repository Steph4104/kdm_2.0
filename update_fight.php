
<?php

require_once 'database.php';
$con=mysqli_connect($db_host, $db_username, $db_password,$db_name);
$survivor_id = $_POST['id'];

//if($_POST['type'] == 'fighting_art_1'){

	switch ($_POST['type']) {
		case 'fighting_art_1':
			$position = 1;
			break;
			case 'fighting_art_2':
			$position = 2;
			break;
			case 'fighting_art_3':
			$position = 3;
			break;
	}
$value = $_POST['value'];

$fighting_art = mysqli_query($con, "SELECT id FROM fighting_disroder WHERE ID_SURVIVOR='".$survivor_id."' AND POSITION ='".$position."'");  

if($fighting_art->num_rows == 0){
	$sql = "INSERT INTO fighting_disroder (ID_SURVIVOR, TYPE, ID_ACTION,POSITION) VALUES (".$survivor_id.",'fighting', ".$value.", ".$position.")";
	
}else{
	$sql = "UPDATE fighting_disroder SET ID_ACTION ='".$value."' WHERE ID_SURVIVOR='".$survivor_id."' AND POSITION ='".$position."'";
	
}


	if ($con->query($sql) === TRUE) {
	    error_log('sucess');
	} else {
	    error_log( "Error updating record: " . $con->error);
	}

    $survivor_id = $_POST['id'];
    $fighting_description1 = mysqli_fetch_assoc(mysqli_query($con, "SELECT Rules FROM fighting_art WHERE ID = $value"));
        
    echo '<textarea class="form-control" id="textarea_fighting_art_1" rows="3">'.(isset($fighting_description1['Rules']) ? $fighting_description1['Rules'] : '').'</textarea>';
	error_log($fighting_description1['Rules']);
//}
?>
<script>
          $(document).ready(function() {
			$('.update_fighting').off().on('change', function() {
			 var itemVal = $(this).val();
			 var character = <?php echo $survivor_id; ?>;
			 var itemID = $(this).attr('id');
			 alert('slect fitgh change');
		   
		   $.ajax({
			 url: "update_fight.php",
			 type: 'POST',
			 data: { value: itemVal, id : character, type: itemID} ,
		   }).success(function(data){
		   
			 var section = '#update_' + itemID;
			 $(section).html(data);
		   });
		   });
					 });
</script>          	 
