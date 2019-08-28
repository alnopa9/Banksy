window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('../../img/background/slideshow/panda.svg', '../../img/background/slideshow/bomb_hugger.svg', '../../img/background/slideshow/flower_thrower.svg', '../../img/background/slideshow/rat_camera.svg', '../../img/background/slideshow/rat_paint.svg', '../../img/background/slideshow/rat_parachute.svg', '../../img/background/slideshow/anarchy_rat.svg', '../../img/background/slideshow/angel.svg', '../../img/background/slideshow/elephant_bomb.svg', '../../img/background/slideshow/lenin.svg', '../../img/background/slideshow/monkey_bomb.svg', '../../img/background/slideshow/monkey_sign.svg', '../../img/background/slideshow/rat_jackhammer.svg', '../../img/background/slideshow/zebra.svg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("rotator").src = images[thisImage];

         setTimeout(rotate, 5 * 1000);
          }