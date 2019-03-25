window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('../img/paintings/morons_la_edition_sepia.jpg', '../img/paintings/morons_la_edition_white.jpg', '../img/paintings/morons_sepia.jpg', '../img/paintings/morons_white.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("morons_rotator").src = images[thisImage];

         setTimeout(rotate, 3 * 1000);
          }