$(document).ready(function () {

    var $container = $('.masonry');
    $container.imagesLoaded(function () {
        $container.masonry({
            itemSelector: '.item',
            columnWidth: 300,
            gutterWidth: 20
        });
    });

    var itemsPerPage = 10;
    var visibleItems = itemsPerPage;

    $('#load-more').click(function () {
        var hiddenItems = $('.item:hidden');

        if (hiddenItems.length === 0) {
            alert('모든 리뷰를 불러왔습니다.');
            return;
        }

        visibleItems += itemsPerPage;
        hiddenItems.slice(0, visibleItems).show();

        $container.masonry('layout');
    });

    $('.item').hide().slice(0, visibleItems).show();
    $container.masonry('layout');
});

function openPopup() {
    document.getElementById("popup").style.display = "block";
    document.getElementById("overlay").style.display = "block";
}

function closePopup() {
    document.getElementById("popup").style.display = "none";
    document.getElementById("overlay").style.display = "none";
}

$(".item").on("click", function() {
    openPopup();
});