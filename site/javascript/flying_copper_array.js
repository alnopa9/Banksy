window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('../img/paintings/flying_copper_blue.jpg', '../img/paintings/flying_copper_pink.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("flying_copper_rotator").src = images[thisImage];

         setTimeout(rotate, 3 * 1000);
          }