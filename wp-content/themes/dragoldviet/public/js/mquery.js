$(document).ready(function () {
    $('#list_news').slick({
        dots: true,
        infinite: false,
        autoplay: true,
        speed: 500,
        arrows: false,
        // fade: true,
        // cssEase: 'linear',
        slidesToShow: 3,
        slidesToScroll: 3,
        nextArrow: '<button class="slick-arrow slick-next"></button>',
        prevArrow: '<button class="slick-arrow slick-prev"></button>',
        responsive: [{
            breakpoint: 980,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2,
            }
        }, {
            breakpoint: 480,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
            }
        }]
    });
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
    $('#dailytour').slick({
        dots: true,
        infinite: false,
        autoplay: true,
        speed: 500,
        arrows: false,
        // fade: true,
        // cssEase: 'linear',
        slidesToShow: 3,
        slidesToScroll: 3,
        nextArrow: '<button class="slick-arrow slick-next"></button>',
        prevArrow: '<button class="slick-arrow slick-prev"></button>',
        responsive: [{
            breakpoint: 980,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2,
            }
        }, {
            breakpoint: 480,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
            }
        }]
    });
    $('#rent_car').slick({
        dots: true,
        infinite: false,
        autoplay: true,
        speed: 600,
        arrows: false,
        // fade: true,
        // cssEase: 'linear',
        slidesToShow: 3,
        slidesToScroll: 3,
        nextArrow: '<button class="slick-arrow slick-next"></button>',
        prevArrow: '<button class="slick-arrow slick-prev"></button>',
        responsive: [{
            breakpoint: 980,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2,
            }
        }, {
            breakpoint: 480,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
            }
        }]
    });

    $('#slide_article').slick({
        dots: false,
        infinite: false,
        autoplay: true,
        speed: 500,
        arrows: false,
        // fade: true,
        // cssEase: 'linear',
        slidesToShow: 1,
        slidesToScroll: 1,
        nextArrow: '<button class="slick-arrow slick-next"></button>',
        prevArrow: '<button class="slick-arrow slick-prev"></button>',
    });
    $('#show_event').slick({
        dots: true,
        infinite: false,
        autoplay: true,
        speed: 700,
        arrows: false,
        // fade: true,
        // cssEase: 'linear',
        slidesToShow: 3,
        slidesToScroll: 1,
        responsive: [{
            breakpoint: 1024,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2,
            }
        }, {
            breakpoint: 768,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
            }
        },
        ]
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

$(document).on('click', '#bullet_span', function () {
    CONTROL_MODAL = {
        Body: $('body'),
        main_header: $('.main_header'),
        data: $('#menu-primary_menu'),
    }
    CONTROL_MODAL.main_header.append('<div class="menu_ovelay"></div>');
    $('.menu_ovelay').css({
        'z-index': 9,
    });
    var MENU_HTML = CONTROL_MODAL.data.html();
    console.log(MENU_HTML);
    $('.menu_respo').html(MENU_HTML);
    CONTROL_MODAL.Body.addClass('open_menu');
    $('.menu_respo').css({
        'z-index': 10,
        'left': '0',
    });
});
$(document).on('click', '.menu_ovelay', function () {
    $(".menu_ovelay").remove();
    $('.menu_respo').css({
        'left': '-280px',
    });
});