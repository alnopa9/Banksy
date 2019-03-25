window.onload = init
function init() {
    rotateCYW();
    rotateDonuts();
    rotateFlags();
    rotateFlyingCopper();
    rotateGangsta();
    rotateGOWYC();
    rotateIFTL();
    rotateJandJ();
    rotateKateMoss();
    rotateMorons();
    rotateNapalm();
    rotateBallGames();
    rotateNola();
    rotateTrolleys();
    rotateWorthless();
}

    function rotateCYW() {
        var imagesCYW = new Array ('../img/paintings/choose_your_weapon_bright_purple.jpg', '../img/paintings/choose_your_weapon_dark_blue.jpg', '../img/paintings/choose_your_weapon_dark_orange.jpg', '../img/paintings/choose_your_weapon_gold.jpg', '../img/paintings/choose_your_weapon_green.jpg', '../img/paintings/choose_your_weapon_grey.jpg', '../img/paintings/choose_your_weapon_khaki.jpg', '../img/paintings/choose_your_weapon_lemon.jpg', '../img/paintings/choose_your_weapon_light_orange.jpg', '../img/paintings/choose_your_weapon_magenta.jpg', '../img/paintings/choose_your_weapon_olive.jpg', '../img/paintings/choose_your_weapon_queue_jump_grey.jpg', '../img/paintings/choose_your_weapon_red.jpg', '../img/paintings/choose_your_weapon_silver.jpg', '../img/paintings/choose_your_weapon_sky.jpg', '../img/paintings/choose_your_weapon_slate.jpg', '../img/paintings/choose_your_weapon_soft_yellow.jpg', '../img/paintings/choose_your_weapon_turquoise.jpg', '../img/paintings/choose_your_weapon_white.jpg')
            var thisImageCYW = 0;
        var thisImageCYW = Math.floor(Math.random()*(imagesCYW.length)) ;
        document.getElementById("cyw_rotator").src = imagesCYW[thisImageCYW];
        setTimeout(rotateCYW, 3 * 1000);
    }

    function rotateDonuts() {
        var imagesDonuts = new Array ('../img/paintings/donuts_brown_chocolate.jpg', '../img/paintings/donuts_pink_strawberry.jpg')
            var thisImageDonuts = 0;
        var thisImageDonuts = Math.floor(Math.random()*(imagesDonuts.length)) ;
        document.getElementById("donuts_rotator").src = imagesDonuts[thisImageDonuts];
        setTimeout(rotateDonuts, 3 * 1000);
    }

    function rotateFlags() {
        var imagesFlags = new Array ('../img/paintings/flags_gold.jpg', '../img/paintings/flags_silver.jpg')
            var thisImageFlags = 0;
        var thisImageFlags = Math.floor(Math.random()*(imagesFlags.length)) ;
        document.getElementById("flags_rotator").src = imagesFlags[thisImageFlags];
        setTimeout(rotateFlags, 3 * 1000);
    }

    function rotateFlyingCopper() {
        var imagesFlyingCopper = new Array ('../img/paintings/flying_copper_blue.jpg', '../img/paintings/flying_copper_pink.jpg')
            var thisImageFlyingCopper = 0;
        var thisImageFlyingCopper = Math.floor(Math.random()*(imagesFlyingCopper.length)) ;
        document.getElementById("flying_copper_rotator").src = imagesFlyingCopper[thisImageFlyingCopper];
        setTimeout(rotateFlyingCopper, 3 * 1000);
    }

    function rotateGangsta() {
        var imagesGangsta = new Array ('../img/paintings/gangsta_rat_green.jpg', '../img/paintings/gangsta_rat_pink.jpg', '../img/paintings/gangsta_rat_red.jpg')
            var thisImageGangsta = 0;
        var thisImageGangsta = Math.floor(Math.random()*(imagesGangsta.length)) ;
        document.getElementById("gangsta_rat_rotator").src = imagesGangsta[thisImageGangsta];
        setTimeout(rotateGangsta, 3 * 1000);
    }

    function rotateGOWYC() {
        var imagesGOWYC = new Array ('../img/paintings/get_out_while_you_can_red.jpg', '../img/paintings/get_out_while_you_can_pink.jpg')
            var thisImageGOWYC = 0;
        var thisImageGOWYC = Math.floor(Math.random()*(imagesGOWYC.length)) ;
        document.getElementById("gowyc_rotator").src = imagesGOWYC[thisImageGOWYC];
        setTimeout(rotateGOWYC, 3 * 1000);
    }

    function rotateIFTL() {
        var imagesIFTL = new Array ('../img/paintings/i_fought_the_law_orange.jpg', '../img/paintings/i_fought_the_law_pink.jpg', '../img/paintings/i_fought_the_law_red.jpg')
            var thisImageIFTL = 0;
        var thisImageIFTL = Math.floor(Math.random()*(imagesIFTL.length)) ;
        document.getElementById("iftl_rotator").src = imagesIFTL[thisImageIFTL];
        setTimeout(rotateIFTL, 3 * 1000);
    }

    function rotateJandJ() {
        var imagesJandJ = new Array ('../img/paintings/jack_and_jill_blue.jpg', '../img/paintings/jack_and_jill_pink.jpg')
            var thisImageJandJ = 0;
        var thisImageJandJ = Math.floor(Math.random()*(imagesJandJ.length)) ;
        document.getElementById("jandj_rotator").src = imagesJandJ[thisImageJandJ];
        setTimeout(rotateJandJ, 3 * 1000);
    }

    function rotateKateMoss() {
        var imagesKateMoss = new Array ('../img/paintings/kate_moss.jpg', '../img/paintings/kate_moss_apricot_gold.jpg', '../img/paintings/kate_moss_bue_grey.jpg', '../img/paintings/kate_moss_green.jpg', '../img/paintings/kate_moss_pink.jpg', '../img/paintings/kate_moss_purple.jpg')
            var thisImageKateMoss = 0;
        var thisImageKateMoss = Math.floor(Math.random()*(imagesKateMoss.length)) ;
        document.getElementById("kate_moss_rotator").src = imagesKateMoss[thisImageKateMoss];
        setTimeout(rotateKateMoss, 3 * 1000);
    }

    function rotateMorons() {
        var imagesMorons = new Array ('../img/paintings/morons_la_edition_sepia.jpg', '../img/paintings/morons_la_edition_white.jpg', '../img/paintings/morons_sepia.jpg', '../img/paintings/morons_white.jpg')
            var thisImageMorons = 0;
        var thisImageMorons = Math.floor(Math.random()*(imagesMorons.length)) ;
        document.getElementById("morons_rotator").src = imagesMorons[thisImageMorons];
        setTimeout(rotateMorons, 3 * 1000);
    }

    function rotateNapalm() {
        var imagesNapalm = new Array ('../img/paintings/napalm.jpg', '../img/paintings/napalm_orange.jpg', '../img/paintings/napalm_rainbow.jpg', '../img/paintings/napalm_serpentine_edition.jpg')
            var thisImageNapalm = 0;
        var thisImageNapalm = Math.floor(Math.random()*(imagesNapalm.length)) ;
        document.getElementById("napalm_rotator").src = imagesNapalm[thisImageNapalm];
        setTimeout(rotateNapalm, 3 * 1000);
    }

    function rotateBallGames() {
        var imagesBallGames = new Array ('../img/paintings/no_ball_games_green.jpg', '../img/paintings/no_ball_games_grey.jpg')
            var thisImageBallGames = 0;
        var thisImageBallGames = Math.floor(Math.random()*(imagesBallGames.length)) ;
        document.getElementById("no_ball_games_rotator").src = imagesBallGames[thisImageBallGames];
        setTimeout(rotateBallGames, 3 * 1000);
    }

    function rotateNola() {
        var imagesNola = new Array ('../img/paintings/nola_grey.jpg', '../img/paintings/nola_orange.jpg', '../img/paintings/nola_pink_and_yellow_rain.jpg', '../img/paintings/nola_white.jpg', '../img/paintings/nola_yellow.jpg')
            var thisImageNola = 0;
        var thisImageNola = Math.floor(Math.random()*(imagesNola.length)) ;
        document.getElementById("nola_rotator").src = imagesNola[thisImageNola];
        setTimeout(rotateNola, 3 * 1000);
    }

    function rotateTrolleys() {
        var imagesTrolleys = new Array ('../img/paintings/trolleys_black_and_white.jpg', '../img/paintings/trolleys_colour.jpg')
            var thisImageTrolleys = 0;
        var thisImageTrolleys = Math.floor(Math.random()*(imagesTrolleys.length)) ;
        document.getElementById("trolleys_rotator").src = imagesTrolleys[thisImageTrolleys];
        setTimeout(rotateTrolleys, 3 * 1000);
    }

    function rotateWorthless() {
        var imagesWorthless = new Array ('../img/paintings/worthless_pink.jpg', '../img/paintings/worthless_red.jpg')
            var thisImageWorthless = 0;
        var thisImageWorthless = Math.floor(Math.random()*(imagesWorthless.length)) ;
        document.getElementById("worthless_rotator").src = imagesWorthless[thisImageWorthless];
        setTimeout(rotateWorthless, 3 * 1000);
    }