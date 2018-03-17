<div class="panel-body">
  <?php
    $query =  "SELECT * FROM fighting_disroder WHERE ID_SURVIVOR = $survivor_id";
    if ($fighting = $con->query($query)) {
      while ($row = $fighting->fetch_assoc()) {
        if($row['TYPE'] == 'fighting' && $row['POSITION'] == 1){
          $fighting_art_num1 = $row["ID_ACTION"];
        }
        if($row['TYPE'] == 'fighting' && $row['POSITION'] == 2){
          $fighting_art_num2 = $row["ID_ACTION"];
        }
        if($row['TYPE'] == 'fighting' && $row['POSITION'] == 3){
          $fighting_art_num3 = $row["ID_ACTION"];
        }
      }
    }
  ?>

  <div class="form-group col-sm-4">
    <br/>
    <label >Fighting art: </label>
    <select class="form-control update_fighting" id='fighting_art_1'>
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
    <select class="form-control update_fighting " id='fighting_art_2'>
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
    <select class="form-control update_fighting" id='fighting_art_3'>
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

<script>
$(document).ready(function() {
  $('.update_fighting').off().on('change', function() {
    var itemVal = $(this).val();
    var character = <?php echo $survivor_id; ?>;
    var itemID = $(this).attr('id');

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
