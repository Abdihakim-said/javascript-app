//scroll button
var mybutton = document.getElementById("myBtn");

window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}


//Prevent hash
$(document).ready(function(){
    $('a').on('click', function(event) {
        event.preventDefault();
        var hash = this.hash;
        $('html, body').animate({scrollTop: $(hash).offset().top}, 900);
    });
})



//Get Hostname
document.getElementById("hostname").innerHTML= "<strong>Host </strong>" + location.hostname;


//Get DateTime
let date = new Date();  
let options = {  
    weekday: "long", year: "numeric", month: "short",  
    day: "numeric", hour: "2-digit", minute: "2-digit"  
};  

document.getElementById("DateTime").innerHTML = date.toLocaleTimeString("en-us", options);   


