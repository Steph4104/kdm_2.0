<?php
ob_start();
session_start();
?>
<!doctype html>
<html lang="en">
<?php require_once 'head.php';?>
    <body>
        <div class="container">
            <h1>Kingdom Death: Monster</h1>  
            <h2>People of the Lantern</h2>
            <p>You have chosen the lantern campaign. </p>
            <p>Add expansions?</p>
            
            <form>
                
                <div class="checkbox">
                    <label>
                        <input type="checkbox"> Gorm
                    </label>
                    <br/>
                    <label>
                        <input type="checkbox"> Spidicules
                    </label><br/>
                    <label>
                        <input type="checkbox"> Sunstalker
                    </label><br/>
                    <label>
                        <input type="checkbox"> Flower Knight
                    </label><br/>
                    <label>
                        <input type="checkbox"> Lion Knight
                    </label><br/>
                    <label>
                        <input type="checkbox"> Dung Beetle Knight
                    </label><br/>
                    <label>
                        <input type="checkbox"> Dragon King
                    </label><br/>
                    <label>
                        <input type="checkbox" > Slender Man
                    </label><br/>
                    <label>
                        <input type="checkbox"> Man Hunter
                    </label><br/>
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
                
            <hr/>
            <footer><small>Footer info and Copyrigths info here</small></footer>
        </div>
    </body>
</html>
