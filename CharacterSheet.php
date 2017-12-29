<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="css/favicon.ico">

    <title>Theme Template for Bootstrap</title>
    
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/theme.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
<?php
require_once 'database.php';
$con=mysqli_connect($db_host, $db_username, $db_password,$db_name);
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
$survivor_id = 1;

$name = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM survivors WHERE ID_SURVIVOR = $survivor_id"));

$sexe = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM sexe WHERE ID_SURVIVOR = $survivor_id"));

$born = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM born WHERE ID_SURVIVOR = $survivor_id"));

$survivol = mysqli_fetch_assoc(mysqli_query($con, "SELECT SURVIVOL FROM survivol WHERE ID_SURVIVOR = $survivor_id"));

$hunt_xp = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM hunt_xp WHERE ID_SURVIVOR = $survivor_id"));

$courage = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM courage WHERE ID_SURVIVOR = $survivor_id"));

$understanding = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM understanding WHERE ID_SURVIVOR = $survivor_id"));

$w_proficiency = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM w_proficiency WHERE ID_SURVIVOR = $survivor_id"));

$primary_stat = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM primary_stat WHERE ID_SURVIVOR = $survivor_id"));

$armor_stat = mysqli_fetch_assoc(mysqli_query($con, "SELECT * FROM armor_stat WHERE ID_SURVIVOR = $survivor_id"));




?>
    <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Kingdom Death: Monster</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">KD:M - <?php echo $name["NAME_SURVIVORS"]; ?></a></li>
            <li><a href="#about">Settlement Sheet</a></li>
            
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Character sheet<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">John Snow</a></li>
                <li><a href="#">Rob Stark</a></li>
                <li><a href="#">Missandei</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Dead Characters</li>
                <li><a href="#">Aria Stark</a></li>
                <li><a href="#">Jeoffrey</a></li>
              </ul>
            </li>
            <li><a href="#contact">Ressources</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
<form class="form-horizontal">
    <div class="container theme-showcase" role="main">
<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
	<div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingOne">
          <h4 class="panel-title">
            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
              Character Name
            </a>
          </h4>
        </div>
       
        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">

            <?php require_once 'character.php'; ?>

            </div>
        </div>
    </div>
  	<div class="panel panel-default">
    	<div class="panel-heading" role="tab" id="headingTwo">
      		<h4 class="panel-title">
        		<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Survivals
        		</a>
      		</h4>
    	</div>
		<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      		<div class="panel-body">
              <?php require_once 'survivals.php'; ?>
      		</div>
    	</div>
	</div>
  	<div class="panel panel-default">
    	<div class="panel-heading" role="tab" id="headingThree">
      		<h4 class="panel-title">
        		<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Experience
        		</a>
      		</h4>
    	</div>
 <?php require_once 'experience.php'; ?>
	</div>

	<div class="panel panel-default">
    	<div class="panel-heading" role="tab" id="headingFour">
     		<h4 class="panel-title">
        		<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">Stats + Armor
        		</a>
      		</h4>
    	</div>
    	<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
<?php require_once 'stas_armor.php'; ?>
    	</div>
  	</div>
  	<div class="panel panel-default">
    	<div class="panel-heading" role="tab" id="headingFive">
      		<h4 class="panel-title">
        		<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">Fighting Arts + Secret Fighting Arts
        		</a>
      		</h4>
    	</div>
    	<div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
<?php require_once 'fighting.php'; ?>
    	</div>
  	</div>
  	<div class="panel panel-default">
    	<div class="panel-heading" role="tab" id="headingSix">
      		<h4 class="panel-title">
        		<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix">Disorders
        		</a>
      		</h4>
    	</div>
<?php require_once 'disorders.php'; ?>
  	</div>
	<div class="panel panel-default">
    	<div class="panel-heading" role="tab" id="headingSeven">
      		<h4 class="panel-title">
        		<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">Abilities + Impairements
        		</a>
      		</h4>
    	</div>
<?php require_once 'abilities.php'; ?>
	</div>
  	<div class="panel panel-default">
    	<div class="panel-heading" role="tab" id="headingEight">
      		<h4 class="panel-title">
        		<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="false" aria-controls="collapseEight">Other
        		</a>
      		</h4>
    	</div>
    	<div id="collapseEight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingEight">
      	<?php require_once 'other.php'; ?>
    	</div>
	</div>
</div>
   <button type="button" class="btn btn-success">Submit</button>
   <button type="button" class="btn btn-danger">Cancel</button>
    </div> <!-- /container -->
</form>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
