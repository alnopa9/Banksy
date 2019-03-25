window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('../img/paintings/trolleys_black_and_white.jpg', '../img/paintings/trolleys_colour.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("trolleys_rotator").src = images[thisImage];

         setTimeout(rotate, 3 * 1000);
          }