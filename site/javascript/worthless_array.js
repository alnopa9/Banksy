window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('../img/paintings/worthless_pink.jpg', '../img/paintings/worthless_red.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("worthless_rotator").src = images[thisImage];

         setTimeout(rotate, 3 * 1000);
          }