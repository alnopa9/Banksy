window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('../img/paintings/get_out_while_you_can_red.jpg', '../img/paintings/get_out_while_you_can_pink.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("gowyc_rotator").src = images[thisImage];

         setTimeout(rotate, 3 * 1000);
          }