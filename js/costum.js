$(document).ready(function() {

function getCookie(cname) {
    var name = cname + "=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';');
    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

$('.test').on('change', function() {
    var character=getCookie("character");
    var itemID = $(this).attr('id');
    var itemVal = $(this).val();
    var info = {"character": character,"id": itemID,"value": itemVal};

    save(info);
});

function save(info){
  info = JSON.stringify(info);
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.onreadystatechange=function(){
    if (xmlhttp.readyState==4 && xmlhttp.status==200){
     alert('work!!');
    }
  }
  xmlhttp.open("POST","save.php",true);
    //Must add this request header to XMLHttpRequest request for POST
  xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xmlhttp.send("info=" + info);
}

$('.test2').off().on('click', function() {
  var itemVal = $(this).val();
  var character=getCookie("character");
  var itemID = $(this).attr('id');

  $.ajax({
    url: "update_exp.php",
    type: 'POST',
    data: { value: itemVal, id : character, type: itemID} ,
  }).success(function(data){
    var section = '#update_' + itemID;
    $(section).html(data);
  });
  });
});
