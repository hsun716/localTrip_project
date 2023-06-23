$(document).ready(function() {
    // 첫번째 메뉴의 컨텐츠를 로드
    $('#contents').load('review.jsp');

    // 사이드 메뉴 클릭 이벤트 설정
    $('.menu-item').on('click', function(event) {
      event.preventDefault();  // a 링크 클릭 이벤트 막기

      var url = $(this).attr('href');   // 클릭한 링크의 href 속성
      $('#contants').load(url);         // contents 영역으로 파일 로드
    });
  });
