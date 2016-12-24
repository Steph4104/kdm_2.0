<!doctype html>
<html lang="en">
<?php require_once 'head.php';?>

<body>
  <script src="js/scripts.js"></script>
    <h1>Kingdom Death Monsters</h1>
   <dd> <h3>the nightmare horror board game</h3></dd>
<?php
require_once 'database.php';
$con=mysqli_connect($db_host, $db_username, $db_password,$db_name);
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

if ((empty($_GET['username'])) || (empty($_GET['password']))){

?>
    <form id='login' action='index.php' method='get' accept-charset='UTF-8'>
Login<br>
<input type='hidden' name='submitted' id='submitted' value='1'/>
 
<label for='username' >UserName:</label>
<input type='text' name='username' id='username'  maxlength="50" />
 
<label for='password' >Password:</label>
<input type='password' name='password' id='password' maxlength="50" />
 
<input type='submit' name='Submit' value='Submit' />
 

</form>
 <div class="container">
            <h1>Kingdom Death: Monster</h1>  
            <h2>Welcome to KD:M</h2>
            <p>What will be your choice?</p>
            <p><a href="NewCampaign.html">
                <button>New Game</button></a>
            </p>
            <p><button>Existing game</button></p>
            <hr/>
            <footer><small>Footer info and Copyrigths info here</small></footer>
        </div>
        
</body>
</html>


