window.onload = init
function init() {
    rotateCYW();
}

    function rotateCYW() {
        var imagesCYW = new Array ('../img/paintings/choose_your_weapon_bright_purple.jpg', '../img/paintings/choose_your_weapon_dark_blue.jpg', '../img/paintings/choose_your_weapon_dark_orange.jpg', '../img/paintings/choose_your_weapon_gold.jpg', '../img/paintings/choose_your_weapon_green.jpg', '../img/paintings/choose_your_weapon_grey.jpg', '../img/paintings/choose_your_weapon_khaki.jpg', '../img/paintings/choose_your_weapon_lemon.jpg', '../img/paintings/choose_your_weapon_light_orange.jpg', '../img/paintings/choose_your_weapon_magenta.jpg', '../img/paintings/choose_your_weapon_olive.jpg', '../img/paintings/choose_your_weapon_que_jump_grey.jpg', '../img/paintings/choose_your_weapon_red.jpg', '../img/paintings/choose_your_weapon_silver.jpg', '../img/paintings/choose_your_weapon_sky.jpg', '../img/paintings/choose_your_weapon_slate.jpg', '../img/paintings/choose_your_weapon_soft_yellow.jpg', '../img/paintings/choose_your_weapon_turquoise.jpg', '../img/paintings/choose_your_weapon_white.jpg', '../img/paintings/choose_your_weapon_')
            var thisImageCYW = 0;
        var thisImageCYW = Math.floor(Math.random()*(imagesCYW.length)) ;
        document.getElementById("cyw_rotator").src = imagesCYW[thisImageCYW];
        setTimeout(rotateCYW, 3 * 1000);
    }