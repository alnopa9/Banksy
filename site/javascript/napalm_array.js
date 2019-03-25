window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('../img/paintings/napalm.jpg', '../img/paintings/napalm_orange.jpg', '../img/paintings/napalm_rainbow.jpg', '../img/paintings/napalm_serpentine_edition.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("napalm_rotator").src = images[thisImage];

         setTimeout(rotate, 3 * 1000);
          }