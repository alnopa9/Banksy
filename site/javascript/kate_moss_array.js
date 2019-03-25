window.onload = init
function init() {
    rotate();
}

            
            function rotate() {
          var images = new Array ('../img/paintings/kate_moss.jpg', '../img/paintings/kate_moss_apricot_gold.jpg', '../img/paintings/kate_moss_bue_grey.jpg', '../img/paintings/kate_moss_green.jpg', '../img/paintings/kate_moss_pink.jpg', '../img/paintings/kate_moss_purple.jpg')
                var thisImage = 0;
      var thisImage = Math.floor(Math.random()*(images.length)) ;

          document.getElementById("kate_moss_rotator").src = images[thisImage];

         setTimeout(rotate, 3 * 1000);
          }