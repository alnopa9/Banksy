window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('../img/paintings/flags_gold.jpg', '../img/paintings/flags_silver.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("flags_rotator").src = images[thisImage];

         setTimeout(rotate, 3 * 1000);
          }