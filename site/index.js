window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('img/background/slideshow/panda.png', 'img/background/slideshow/bomb_hugger.png', 'img/background/slideshow/flower_thrower.png', 'img/background/slideshow/rat_camera.png', 'img/background/slideshow/rat_paint.png', 'img/background/slideshow/rat_parachute.png', 'img/background/slideshow/anarchy_rat.png', 'img/background/slideshow/angel.png', 'img/background/slideshow/elephant_bomb.png', 'img/background/slideshow/lenin.png', 'img/background/slideshow/monkey_bomb.png', 'img/background/slideshow/monkey_sign.png', 'img/background/slideshow/rat_jackhammer.png', 'img/background/slideshow/zebra.png')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("rotator").src = images[thisImage];

         setTimeout(rotate, 5 * 1000);
          }