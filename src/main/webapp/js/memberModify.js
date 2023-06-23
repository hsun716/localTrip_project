//유효성 검사
function modifyForm_check(){
	var pw = document.getElementById("pw");
	var pw2 = document.getElementById("pw2");
	var phoneNum = document.getElementById("phoneNum");
	
	//비밀번호 영문 숫자 특수문자 조합(8~16자리 입력)
	var regPw = /^(?=.*[a-zA-Z])(?=.*[~`!@#$%^&*-+=])(?=.*[0-9]).{8,16}$/;
	
	//숫자만 입력하는 정규식
	var reg = /^[0-9]+$/;
	
	if(pw.value == ""){ 						//pw 입력값이 없을 경우 알림창
		alert("비밀번호를 입력하세요.");
		pw.focus();
		return false;
	} else if(!regPw.test(pw.value)){			//pw 형식 안맞을 경우 알림창
		alert("비밀번호는 영문자 + 숫자 + 특수문자 조합, 공백 제외 8~16자리를 사용해야 합니다.");
		pw.focus();
		return false;
	}
	
	if(pw2.value !== pw.value){					//pw, pw2가 일치하지 않을경우
		alert("비밀번호가 일치하지 않습니다.");
		pw2.focus();
		return false;
	}
	
	if(!reg.test(phoneNum.value)){			//birth 8글자 숫자 아닌 경우
		alert("전화번호는 '-', 공백 제외 13글자로 숫자만 입력할 수 있습니다.");
		phoneNum.focus();
		return false;
	} else if(phoneNum.value.length != 11){
		alert("전화번호는 공백 없이 13글자로 숫자만 입력할 수 있습니다.");
		phoneNum.focus();
		return false;
	}
	
	//입력값 전송
	document.modifyForm.submit();
}

//취소 누르면 뒤로 돌아가는 버튼
document.getElementById('go-back').addEventListener('click', () => {
  window.history.back();
});