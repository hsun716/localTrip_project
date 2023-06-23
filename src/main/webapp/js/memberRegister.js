//유효성 검사
function registerForm_check(){
	var id = document.getElementById("id");
	var pw = document.getElementById("pw");
	var pw2 = document.getElementById("pw2");
	var name = document.getElementById("name");
	var birth = document.getElementById("birth");
	var phoneNum = document.getElementById("phoneNum");
	var male = document.getElementById("male");
	var female = document.getElementById("female");

	//아이디 영문 숫자 조합(8~16자리 입력)
	var regId = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,16}$/;
	
	//비밀번호 영문 숫자 특수문자 조합(8~16자리 입력)
	var regPw = /^(?=.*[a-zA-Z])(?=.*[~`!@#$%^&*-+=])(?=.*[0-9]).{8,16}$/;
	
	//name 한글과 영어만 가능
	var regName = /^[가-힣a-zA-Z]{2,15}$/;
	
	//숫자만 입력하는 정규식
	var reg = /^[0-9]+$/;
	
	
	if(id.value == ""){							//id 입력값이 없을 경우 알림창
		alert("아이디를 입력하세요.");
		id.focus();
		return false;
	} else if(!regId.test(id.value)){			//id 형식 안맞을 경우 알림창
		alert("아이디는 영문자 + 숫자 조합, 공백 제외 8~16자리를 사용해야 합니다.")
	}
	
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
	
	if(name.value == ""){						//name 입력값이 없을 경우 알림창
		alert("이름을 입력하세요.");
		name.focus();
		return false;
	} else if(!regName.test(name.value)){		//name 형식 안맞을경우
		alret("최소 두 글자 이상, 공백 제외 한글과 영문만 입력하세요.");
		name.focus();
		return false;
	}
	
	if(birth.value == ""){						//birth 입력값이 없을 경우 알림창
		alert("생년월일을 입력하세요.");
		birth.focus();
		return false;
	} else if(!reg.test(birth.value)){			//birth 8글자 숫자 아닌 경우
		alert("생년월일은 공백 없이 8글자로 숫자만 입력할 수 있습니다.");
		birth.focus();
		return false;
	} else if(birth.value.length != 8){
		alert("생년월일은 공백 없이 8글자로 숫자만 입력할 수 있습니다.");
		birth.focus();
		return false;
	}
	
	if(phoneNum.value == ""){				//phoneNum 입력값이 없을 경우 알림창
		alert("전화번호를 입력하세요.");
		phoneNum.focus();
		return false;
	} else if(!reg.test(phoneNum.value)){			//birth 8글자 숫자 아닌 경우
		alert("전화번호는 '-', 공백 제외 13글자로 숫자만 입력할 수 있습니다.");
		phoneNum.focus();
		return false;
	} else if(phoneNum.value.length != 11){
		alert("전화번호는 공백 없이 13글자로 숫자만 입력할 수 있습니다.");
		phoneNum.focus();
		return false;
	}
	
	if(!male.checked && !female.checked) {		//gender 미체크일 경우
		alert("성별을 선택하세요.");
		return false;
	}
	
	//입력값 전송
	document.registerForm.submit();
}

//아이디 중복 체크
$('#id').on('focusout', function(){
	let id = $('#id').val();

	$.ajax({
		url : "idCheck.do",		// 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
		type:  "post",			// HTTP 요청방식 (get/post)
		data: {"id": id},			// HTTP 요청과 함께 서버로 보낼 데이터
		dataType: 'text',		// 서버에서 보내줄 데이터의 타입
		// 성공적으로 값을 서버로 보냈을 경우 처리하는 코드
		success: function(result){
			if(result == 0){
				$("#idCheckMsg").html('<font color=red>이미 존재하는 아이디입니다.</font>');
			} else{
				$("#idCheckMsg").html('<font color=#00df13>사용 가능한 아이디입니다.</font>');
			}
		},
		error:function(){
			alert("서버요청실패");
		}
	})
})

//취소 누르면 뒤로 돌아가는 버튼
document.getElementById('go-back').addEventListener('click', () => {
  window.history.back();
});


