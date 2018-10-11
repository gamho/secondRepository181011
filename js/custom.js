
(function($) {
    'use strict';

    // Main Navigation
    $( '.hamburger-menu.main' ).on( 'click', function() {
        $(this).toggleClass('close');
        $('.site-branding').toggleClass('hide');            // logo 감추기
        $('.site-navigation.main').toggleClass('show');          // navi 열기
        $('.site-header').toggleClass('no-shadow');
    });
    
    $( '.hamburger-menu.person' ).on( 'click', function() {
        $(this).toggleClass('close');
        $('.site-branding').toggleClass('hide');                     // logo 감추기
        $('.site-navigation.person').toggleClass('show');          // navi 열기
        $('.site-header').toggleClass('no-shadow');
    });

    // Scroll to Next Section
    $( '.scroll-down' ).click(function() {
        $( 'html, body' ).animate({
            scrollTop: $( '.scroll-down' ).offset().top + 100
        }, 800 );
    });
})(jQuery);