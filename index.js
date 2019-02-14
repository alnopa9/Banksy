window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('pages/img/background/slideshow/panda.png', 'pages/img/background/slideshow/balloons.png', 'pages/img/background/slideshow/bomb_hugger.png', 'pages/img/background/slideshow/flower_thrower.png', 'pages/img/background/slideshow/rat_camera.png', 'pages/img/background/slideshow/rat_paint.png', 'pages/img/background/slideshow/rat_parachute.png', 'pages/img/background/slideshow/anarchy_rat.png', 'pages/img/background/slideshow/angel.png', 'pages/img/background/slideshow/elephant_bomb.png', 'pages/img/background/slideshow/lenin.png', 'pages/img/background/slideshow/monkey_bomb.png', 'pages/img/background/slideshow/monkey_sign.png', 'pages/img/background/slideshow/rat_jackhammer.png', 'pages/img/background/slideshow/zebra.png')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("rotator").src = images[thisImage];

         setTimeout(rotate, 5 * 1000);
          }