var main = function() {
    var slides = $(".slides-container");
    setClickListeners();
};

var setClickListeners = function() {
    setPresentationNavClickers();
};

var setPresentationNavClickers = function() {
    var slides = $(".slides-container");
        slides.slick();
};

$(document).ready(main);