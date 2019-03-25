window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('../img/paintings/nola_grey.jpg', '../img/paintings/nola_orange.jpg', '../img/paintings/nola_pink_and_yellow_rain.jpg', '../img/paintings/nola_white.jpg', '../img/paintings/nola_yellow.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("nola_rotator").src = images[thisImage];

         setTimeout(rotate, 3 * 1000);
          }