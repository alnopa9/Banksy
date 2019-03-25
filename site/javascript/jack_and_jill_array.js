window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('../img/paintings/jack_and_jill_blue.jpg', '../img/paintings/jack_and_jill_pink.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("jandj_rotator").src = images[thisImage];

         setTimeout(rotate, 3 * 1000);
          }