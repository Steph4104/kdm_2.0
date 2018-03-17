<?php
  ob_start();
  session_start();
?>
<!doctype html>
<html lang="en">
  <?php
    require_once 'head.php';
    require_once 'database.php';
    $con=mysqli_connect($db_host, $db_username, $db_password,$db_name);
    if (mysqli_connect_errno()){
      echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
  ?>
  <body>
    <div class="container">
      <h1>Kingdom Death: Monster</h1>
      <h2>Welcome to KD:M</h2>
      <p>What will be your choice?</p>
      <p><a href="NewCampaign.php">
        <button>New Game</button></a>
      </p>
      <p><button>Existing game</button></p>
      <hr/>
      <form action='CharacterSheet' method='POST'>
        <label >Character: </label>
        <select class="form-control" name='characterName'>
          <?php
            $characters = mysqli_query($con, "SELECT * FROM survivors ORDER BY ID_SURVIVOR ASC");
            while ($row = $characters->fetch_assoc()) {
              echo '<option value="'.$row["ID_SURVIVOR"].'">'.$row["NAME_SURVIVORS"].'</option>';
            }
          ?>
        </select>
        <button type='submit'>Start</button>
      </form>
    </div>
  </body>
</html>
