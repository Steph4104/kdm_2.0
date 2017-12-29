<div class="panel-body">

<?php  
$query =  "SELECT * FROM fighting_disroder WHERE ID_SURVIVOR = $survivor_id"; 


if ($fighting = $con->query($query)) {

      while ($row = $fighting->fetch_assoc()) {
        if($row['NUM_FIGHTING'] == 1){
          $fighting_art_num1 = $row["ID_FIGHTINGS"];
        }

        if($row['NUM_FIGHTING'] == 2){
          $fighting_art_num2 = $row["ID_FIGHTINGS"];
        }

        if($row['NUM_FIGHTING'] == 3){
          $fighting_art_num3 = $row["ID_FIGHTINGS"];
        }
          
      }
  
  }

?>



<div class="form-group col-sm-4">
<br/>
<label >Fighting art: </label>
<?php 

?>
<select class="form-control">
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
    <textarea class="form-control" id="fighting_art_1" rows="3"><?php echo (isset($fighting_description1) ? $fighting_description1 : ''); ?></textarea>
  </div>

  <div class="form-group col-sm-4">
  <br/>
  <label >Fighting art: </label>
  <select class="form-control">
  <?php 
    $fighting_art = mysqli_query($con, "SELECT * FROM fighting_art ORDER BY ID ASC");  
    $fighting_art = mysqli_query($con, "SELECT * FROM fighting_art");  
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
      <textarea class="form-control" id="fighting_art_1" rows="3"><?php echo (isset($fighting_description2) ? $fighting_description2 : ''); ?></textarea>
    </div>

    <div class="form-group col-sm-4">
    <br/>
    <label >Fighting art: </label>
    <select class="form-control">
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
        <textarea class="form-control" id="fighting_art_1" rows="3"><?php echo (isset($fighting_description3) ? $fighting_description3 : ''); ?></textarea>
      </div>
      		</div>