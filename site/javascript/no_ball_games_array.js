window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('../img/paintings/no_ball_games_green.jpg', '../img/paintings/no_ball_games_grey.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("no_ball_games_rotator").src = images[thisImage];

         setTimeout(rotate, 3 * 1000);
          }