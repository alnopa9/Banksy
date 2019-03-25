window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('../img/paintings/i_fought_the_law_orange.jpg', '../img/paintings/i_fought_the_law_pink.jpg', '../img/paintings/i_fought_the_law_red.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("iftl_rotator").src = images[thisImage];

         setTimeout(rotate, 3 * 1000);
          }