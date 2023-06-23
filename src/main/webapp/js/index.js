$(function () {
  $('#slider_wrap').slick({
      slide: 'div',
      infinite: true,
      speed: 500,
      dots: true,
      autoplay: true,
      autoplaySpeed: 2000,
      pauseOnHover: false,
      pauseOnFocus: false,
      prevArrow: "<button type='button' class='slick-prev'>&nbsp;</button>",
      nextArrow: "<button type='button' class='slick-next'>&nbsp;</button>",
      fade: true,
      cssEase: 'linear'
  });
})