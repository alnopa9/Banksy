window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('../img/paintings/donuts_brown_chocolate.jpg', '../img/paintings/donuts_pink_strawberry.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("donuts_rotator").src = images[thisImage];

         setTimeout(rotate, 3 * 1000);
          }