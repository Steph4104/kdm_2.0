<div class="panel-body">

<?php  
$query =  "SELECT * FROM fighting_disroder WHERE ID_SURVIVOR = $survivor_id"; 


if ($disorder = $con->query($query)) {

  while ($row = $disorder->fetch_assoc()) {
    if($row['TYPE'] == 'disorder' && $row['POSITION'] == 1){
      $disorder_num1 = $row["ID_ACTION"];
    }
    if($row['TYPE'] == 'disorder' && $row['POSITION'] == 2){
      $disorder_num2 = $row["ID_ACTION"];
    }
    if($row['TYPE'] == 'disorder' && $row['POSITION'] == 3){
      $disorder_num3 = $row["ID_ACTION"];
    }
      
  }
  
  }

?>



<div class="form-group col-sm-4">
<br/>
<label >Disorder: </label>
<?php 

?>
<select class="form-control update_fighting" id='disorder_1'>
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
  <select class="form-control update_fighting" id='disorder_2'>
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
    <select class="form-control update_fighting" id='disorder_3'>
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

          <script>
          $(document).ready(function() {
 $('.update_fighting').off().on('change', function() {
  var itemVal = $(this).val();
  var character = <?php echo $survivor_id; ?>;
  var itemID = $(this).attr('id');
  alert('select disorder change');

$.ajax({
  url: "update_fight.php",
  type: 'POST',
  data: { value: itemVal, id : character, type: itemID} ,
}).success(function(data){

  var section = '#update_' + itemID;
  console.log(section);
  $(section).html(data);
});
});
          });
</script>