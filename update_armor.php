
<?php

require_once 'database.php';
$con=mysqli_connect($db_host, $db_username, $db_password,$db_name);
$survivor_id = $_POST['id'];

if($_POST['type'] == 'head' || $_POST['type'] == 'box_head_1'){

 $value = $_POST['value'];
	$sql = "UPDATE armor_stat SET HEAD ='".$value."' WHERE ID_SURVIVOR='".$_POST['id']."'";

	if ($con->query($sql) === TRUE) {
	    error_log('sucess');
	} else {
	    error_log( "Error updating record: " . $con->error);
	}

    $survivor_id = $_POST['id'];
    $head = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM armor_stat WHERE ID_SURVIVOR = $survivor_id"));
	echo '<input type="text" class="form-control update_armor" id="head" value='.($head['HEAD'] >= 0 ?  $head['HEAD'] : 0).' >';
	echo '<input class=".form-check-inline update_armor" type="checkbox" value="-1" id="box_head_1"  '.($head['HEAD'] < 0 ? 'checked' : '').' >';
} 
?>
<script>
 $('.update_armor').on('change', function() {
	alert('on change');
   var itemVal = $(this).val();
   var character = <?php echo $survivor_id; ?>;
   var itemID = $(this).attr('id');
 
 $.ajax({
   url: "update_armor.php",
   type: 'POST',
   data: { value: itemVal, id : character, type: itemID} ,
 }).success(function(data){
 
   var section = '#update_head';
   $(section).html(data);
 });
 });
</script>          	 
