window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('pages/img/background/panda.png', 'pages/img/background/balloons.jpg', 'pages/img/background/bomb_hugger.jpg', 'pages/img/background/flower_thrower.png', 'pages/img/background/rat_camera.jpg', 'pages/img/background/rat_paint.jpg', 'pages/img/background/rat_parachute.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("rotator").src = images[thisImage];

         setTimeout(rotate, 8 * 1000);
          }