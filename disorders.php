<div class="panel-body">

<?php  
$query =  "SELECT * FROM fighting_disroder WHERE ID_SURVIVOR = $survivor_id"; 


if ($disorder = $con->query($query)) {

      while ($row = $disorder->fetch_assoc()) {
        if($row['NUM_DISORDER'] == 1){
          $disorder_num1 = $row["ID_DISORDER"];
        }

        if($row['NUM_DISORDER'] == 2){
          $disorder_num2 = $row["ID_DISORDER"];
        }

        if($row['NUM_DISORDER'] == 3){
          $disorder_num3 = $row["ID_DISORDER"];
        }
          
      }
  
  }

?>



<div class="form-group col-sm-4">
<br/>
<label >Disorder: </label>
<?php 

?>
<select class="form-control">
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
    <label for="fighting_art_1">#1</label>
    <textarea class="form-control" id="fighting_art_1" rows="3"><?php echo (isset($disorder_description1) ? $disorder_description1 : ''); ?></textarea>
  </div>

  <div class="form-group col-sm-4">
  <br/>
  <label >Disorder: </label>
  <select class="form-control">
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
      <label for="fighting_art_1">#2</label>
      <textarea class="form-control" id="fighting_art_1" rows="3"><?php echo (isset($disorder_description2) ? $disorder_description2 : ''); ?></textarea>
    </div>

    <div class="form-group col-sm-4">
    <br/>
    <label >Fighting art: </label>
    <select class="form-control">
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
        <label for="fighting_art_1">#3</label>
        <textarea class="form-control" id="fighting_art_1" rows="3"><?php echo (isset($disorder_description3) ? $disorder_description3 : ''); ?></textarea>
      </div>
      		</div>