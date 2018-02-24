
<?php

// echo $_POST['value'];

// echo $_POST['id'];



require_once 'database.php';
$con=mysqli_connect($db_host, $db_username, $db_password,$db_name);

if($_POST['type'] == 'HuntXP'){

 $hunt = explode(",", $_POST['value']);
        if($hunt['0'] == 'less'){
            $new_value = $hunt['1'] - 1;
        }else{
             $new_value = $hunt['1'] + 1;
        }

	
	$sql = "UPDATE hunt_xp SET XP ='".$new_value."' WHERE ID_SURVIVOR='".$_POST['id']."'";

if ($con->query($sql) === TRUE) {
   // echo "Record updated successfully";
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
 }                   
                    ?>





       <script>
 $('.test2').on('click', function() {
  var itemVal = $(this).val();
  var character = <?php echo $survivor_id; ?>;
  var itemID = $(this).attr('id');

alert('click');
$.ajax({
  url: "update_hunt.php",
  type: 'POST',
  data: { value: itemVal, id : character, type: itemID} ,
}).success(function(data){
  // data is your response
  alert(data);
  $("#update_hunt").html(data);
});
});
</script>          	 
