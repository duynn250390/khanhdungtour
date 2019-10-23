$(document).ready(function () {
    $('#main_slideshow').slick({
        dots: false,
        infinite: false,
        autoplay: true,
        speed: 500,
        arrows: false,
        fade: true,
        cssEase: 'linear',
        slidesToShow: 1,
        slidesToScroll: 1,
        nextArrow: '<button class="slick-arrow slick-next"></button>',
        prevArrow: '<button class="slick-arrow slick-prev"></button>',
    });
    $('#show_event').slick({
        dots: false,
        infinite: false,
        autoplay: true,
        speed: 700,
        arrows: false,
        // fade: true,
        // cssEase: 'linear',
        slidesToShow: 3,
        slidesToScroll: 1,
    });
    //     dots: false,
    //     infinite: false,
    //     autoplay: true,
    //     speed: 500,
    //     // fade: true,
    //     // cssEase: 'linear',
    //     slidesToShow: 5,
    //     slidesToScroll: 1,
    //     nextArrow: '<button class="slick-arrow slick-next"></button>',
    //     prevArrow: '<button class="slick-arrow slick-prev"></button>',
    //     responsive: [{
    //             breakpoint: 1200,
    //             settings: {
    //                 slidesToShow: 4,
    //                 slidesToScroll: 4,
    //                 infinite: true,
    //                 dots: false
    //             }
    //         },
    //         {
    //             breakpoint: 1025,
    //             settings: {
    //                 slidesToShow: 3,
    //                 slidesToScroll: 3,
    //                 infinite: true,
    //                 dots: false
    //             }
    //         },
    //         {
    //             breakpoint: 981,
    //             settings: {
    //                 slidesToShow: 2,
    //                 slidesToScroll: 2,
    //                 infinite: true,
    //                 dots: false
    //             }
    //         },
    //         {
    //             breakpoint: 481,
    //             settings: {
    //                 slidesToShow: 1,
    //                 slidesToScroll: 1,
    //                 infinite: true,
    //                 dots: false
    //             }
    //         },
    //     ]
    // });
});
// $(document).on('click', '#checkSize', function() {
//     alert(1);
// });

// ACTIVE TABS
$(document).on('click', '.item_tab', function () {
    getID = $(this).attr('data-tab');
    $('.item_tab').removeClass('active');
    $(this).addClass('active');
    $('.content_form ').removeClass('active');
    $('#tabs_' + getID).addClass('active');
});