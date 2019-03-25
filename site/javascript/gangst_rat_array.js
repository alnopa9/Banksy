window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('../img/paintings/gangsta_rat_green.jpg', '../img/paintings/gangsta_rat_pink.jpg', '../img/paintings/gangsta_rat_red.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("gangsta_rat_rotator").src = images[thisImage];

         setTimeout(rotate, 3 * 1000);
          }